const Trello = require("trello");

class TrelloSync {
  logger = undefined;
  orgId = undefined;
  allOrgBoards = [];
  sourceBoards = [];
  destBoard = undefined;
  trello = undefined;

  constructor(trelloKey, trelloToken, orgId, logger) {
    this.orgId = orgId;
    this.trello = new Trello(trelloKey, trelloToken);
    this.logger = logger;
  }

  async getBoardFromName(name) {
    if (this.allOrgBoards.length == 0) {
      this.allOrgBoards = await this.trello.getOrgBoards(this.orgId);
    }
    return this.allOrgBoards.find((board) => board.name == name);
  }

  async addDestBoard(destBoardName) {
    const boardToAdd = await this.getBoardFromName(destBoardName);
    if (boardToAdd) {
      await this.addListsToBoard(boardToAdd);
      this.destBoard = boardToAdd;
    }
  }

  async addToSourceBoards(name) {
    if (this.destBoard == undefined)
      throw new Error("Se debe llamar a addDestBoard primero");
    const boardToAdd = await this.getBoardFromName(name);
    if (boardToAdd) {
      await this.addListsToBoard(boardToAdd);
      this.sourceBoards.push(boardToAdd);
    }
  }

  async addListsToBoard(board) {
    board.lists = await this.trello.getListsOnBoard(board.id);
    await this.addCardsToArrayOfLists(board.lists);
    return board;
  }

  async addAttachmentsToCard(card) {
    card.attachments = await this.trello.makeRequest(
      "get",
      "/1/cards/" + card.id + "/attachments",
      {}
    );
  }

  async addCardsToList(list) {
    list.cards = await this.trello.getCardsForList(list.id);
    return Promise.all(
      list.cards.map(async (card) => await this.addAttachmentsToCard(card))
    );
  }

  async addCardsToArrayOfLists(lists) {
    return Promise.all(
      lists.map(async (aList) => await this.addCardsToList(aList))
    );
  }

  isLinked(card) {
    if (card.attachments.length == 0) return false;
    return card.attachments.find((attach) => attach.url.includes("trello.com"));
  }

  findListInBoardByName(listName, board) {
    return board.lists.find((list) => list.name == listName);
  }

  findCardByShortURL(shortURL, board) {
    return board.lists.reduce((foundCard, list) => {
      if (foundCard !== undefined) return foundCard;
      const card = list.cards.find((card) => {
        return card.shortUrl == shortURL;
      });
      return card ? card : foundCard;
    }, undefined);
  }

  getCardIdFromURL(URL) {
    // format xxx/xxx/xxx/id-xxxx
    const splitted = URL.split("/");
    const lastURLSection = splitted[splitted.length - 1];
    const lastPart = lastURLSection.split("-");
    return lastPart.length > 0 ? lastPart[0] : undefined;
  }

  findCardByURL(URL, board) {
    return board.lists.reduce((foundCard, list) => {
      if (foundCard !== undefined) return foundCard;
      const card = list.cards.find((card) => {
        this.logger.debug(
          {
            card: { url: card.url, id: card.id },
            param: URL,
            result:
              this.getCardIdFromURL(card.url) == this.getCardIdFromURL(URL),
          },
          "CHECK"
        );

        return this.getCardIdFromURL(card.url) == this.getCardIdFromURL(URL);
      });
      return card ? card : foundCard;
    }, undefined);
  }

  findListByCard(cardToSearch, board) {
    return board.lists.reduce((foundCard, list) => {
      if (foundCard !== undefined) return foundCard;
      const card = list.cards.find((card) => {
        return card.id == cardToSearch.id;
      });
      return card ? list : foundCard;
    }, undefined);
  }

  async getArchivedCardsOnBoard(board) {
    this.logger.debug(board, "getArchivedCardsOnBoard");
    const cards = await this.trello.makeRequest(
      "get",
      "/1/boards/" + board.id + "/cards/closed",
      {}
    );
    await Promise.all(
      cards.map(async (card) => await this.addAttachmentsToCard(card))
    );
    return cards;
  }

  async archiveCard(card) {
    this.logger.info(card, "Archiving card");
    return await this.trello.makeRequest("put", "/1/cards/" + card.id, {
      closed: true,
    });
  }

  async createCard(sourceCard, sourceList, destBoard) {
    this.logger.debug("createCard");
    const destList = this.findListInBoardByName(sourceList.name, destBoard);
    if (!destList) throw new Error("Lista no encontrada en el board destino");
    const newCard = await this.trello.addCard(
      sourceCard.name,
      sourceCard.description,
      destList.id
    );
    await this.trello.addAttachmentToCard(newCard.id, sourceCard.url);
    await this.trello.addAttachmentToCard(sourceCard.id, newCard.url);
  }

  async updateCard(sourceCard, sourceList, destBoard) {
    this.logger.debug("updateCard");
    const destList = this.findListInBoardByName(sourceList.name, destBoard);
    if (!destList) throw new Error("Lista no encontrada en el board destino");
    const destCard = sourceCard.attachments.reduce((rta, attach) => {
      if (rta !== undefined) return rta;
      const card = this.findCardByURL(attach.url, destBoard);
      return card ? card : rta;
    }, undefined);
    this.logger.debug(destCard, "destCard");
    if (destCard == undefined) {
      this.logger.debug("-----------------------NO encontrada");
      throw new Error(
        `Tarjeta "${sourceList.name}-${sourceCard.name}" no encontrada en el board destino`
      );
    }
    const destCardList = this.findListByCard(destCard, destBoard);
    // compare cards & update if necesary
    sourceCard.name != destCard.name &&
      (await this.trello.updateCard(destCard.id, "name", sourceCard.name));
    sourceCard.name != destCard.name &&
      this.logger.info(
        {
          changed: sourceCard.name != destCard.name,
          prev: destCard.name,
          new: sourceCard.name,
        },
        "name changed? "
      );
    sourceCard.description != destCard.description &&
      (await this.trello.updateCard(
        destCard.id,
        "description",
        sourceCard.description
      ));
    sourceCard.description != destCard.description &&
      this.logger.info(
        {
          changed: sourceCard.description != destCard.description,
          prev: destCard.description,
          new: sourceCard.description,
        },
        "description changed? "
      );
    sourceList.name != destCardList.name &&
      (await this.trello.updateCardList(destCard.id, destList.id));
    sourceList.name != destList.name &&
      this.logger.info(
        {
          changed: sourceList.name != destCardList.name,
          prev: destCardList.name,
          new: sourceList.name,
        },
        "list changed? "
      );
  }

  async archiveCardsOnBoardFromSourceCards(sourceCards, destBoard) {
    this.logger.info("archiveCardsOnBoardFromSourceCards");
    const cardsToArchive = await Promise.all(
      sourceCards.map(async (card) => {
        const destCard = card.attachments.reduce((rta, attach) => {
          if (rta !== undefined) return rta;
          console.log(attach.url)
          const card = this.findCardByURL(attach.url, destBoard);
          return card ? card : rta;
        }, undefined);
        return destCard;
      })
    );
    console.log(cardsToArchive);
    await Promise.all(cardsToArchive.map((card) => this.archiveCard(card)));
  }

  async syncCardsFromSource() {
    let archivedCards = [];
    await Promise.all(
      this.sourceBoards.map(async (board) => {
        this.logger.debug(board.name, "------------------Board");
        return await Promise.all(
          board.lists.map(async (list) => {
            this.logger.debug(list.name, "----------List");
            this.logger.debug("test 01");
            const archived = await this.getArchivedCardsOnBoard(board);
            this.logger.debug(archived, "Archived");
            archivedCards.push(archived.filter(card => card!==undefined));
            return Promise.all(
              list.cards.map(async (card) => {
                try {
                  return this.isLinked(card)
                    ? await this.updateCard(card, list, this.destBoard)
                    : await this.createCard(card, list, this.destBoard);
                } catch (e) {
                  this.logger.error(e);
                }
              })
            );
          })
        );
      })
    );
    this.logger.debug(archivedCards, "Cards to archive");
    await this.archiveCardsOnBoardFromSourceCards(
      archivedCards,
      this.destBoard
    );
  }
}

module.exports = TrelloSync;

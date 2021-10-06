const logger = require("pino")();
require("dotenv").config();
const TrelloSync = require("./trello-sync");
const config = require("./config.json");

logger.level = "info";

async function sync(trelloKey, trelloToken, conf) {
  const sync = new TrelloSync(
    trelloKey,
    trelloToken,
    conf.organization,
    logger
  );
  await sync.addDestBoard(conf.destBoard);
  await Promise.all(
    conf.sourceBoards.map(
      async (boardName) => await sync.addToSourceBoards(boardName)
    )
  );
  sync.syncCardsFromSource();
}

try {
  if (
    process.env.TRELLO_KEY === undefined ||
    process.env.TRELLO_TOKEN === undefined
  ) {
    throw new Error(
      "Faltan las variables de entorno TRELLO_KEY y/o TRELLO_TOKEN"
    );
  }
  sync(process.env.TRELLO_KEY, process.env.TRELLO_TOKEN, config);
} catch (e) {
  logger.error(e);
}

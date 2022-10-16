const logger = require("pino")();
const app = require("express")();
require("dotenv").config();
const TrelloSync = require("./trello-sync");
const config = require("./config.json");
const api = require("./api");

logger.level = "debug";
const PORT = process.env.PORT || 3000;

async function initializeTrelloSync(trelloKey, trelloToken, conf) {
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
  return sync;
}

async function initializeAPI(trelloKey, trelloToken, config, app) {
  const trelloSync = await initializeTrelloSync(
    trelloKey,
    trelloToken,
    config
  );

  api.initialize({ app, port: PORT, logger, config, trelloSync });
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
  // sync(process.env.TRELLO_KEY, process.env.TRELLO_TOKEN, config);
  initializeAPI(process.env.TRELLO_KEY, process.env.TRELLO_TOKEN, config, app)
} catch (e) {
  logger.error(e);
}

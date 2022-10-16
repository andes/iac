const bodyParser = require("body-parser");

api = {
  initialize: async ({ app, port, logger, config, trelloSync }) => {
    app.use(bodyParser.json());

    app.get("/api/health", (req, res) => {
      res.json({ status: "ok" });
    });

    app.get("/api/trello_callback", (req, res) => {
      logger.debug("GET /api/trello_callback");
      // logger.debug(req);
      /* logger.debug(req.params);
      logger.debug(req.query); */
      res.json({ status: "ok" });
    });

    app.post("/api/trello_callback", (req, res) => {
      logger.debug("POST /api/trello_callback");
      logger.debug(req.body.model.id);
      logger.debug(req.body.model.name);
      const action = req.body.action.type; // createCard | updateCard | deleteCard
      const data = req.body.action.data;
      const cardId = data.card.id;
      logger.debug(action);
      logger.debug(data);
      trelloSync.updateCardFromSourceCardId(
        cardId,
        data.list || data.listAfter,
        action
      );
      res.json({ status: "ok" });
    });

    app.listen(port, () => {
      logger.info(`App running on port ${port}`);
    });

    await trelloSync.removeAllWebhooks();
    await trelloSync.addWebhooks(
      `${config.callback_server}/api/trello_callback`
    );

    return app;
  },
};
module.exports = api;

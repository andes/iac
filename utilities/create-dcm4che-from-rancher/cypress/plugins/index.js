/// <reference types="cypress" />
// ***********************************************************
// This example plugins/index.js can be used to load plugins
//
// You can change the location of this file or turn off loading
// the plugins file with the 'pluginsFile' configuration option.
//
// You can read more here:
// https://on.cypress.io/plugins-guide
// ***********************************************************

// This function is called when a project is opened or re-opened (e.g. due to
// the project's config changing)

require('dotenv').config();

/**
 * @type {Cypress.PluginConfig}
 */
// eslint-disable-next-line no-unused-vars
module.exports = (on, config) => {
  // `on` is used to hook into various events Cypress emits
  // `config` is the resolved Cypress config
  config.env.rancher_user = process.env.RANCHER_USER;
  config.env.rancher_password = process.env.RANCHER_PASSWORD;
  config.env.rancher_cluster_id = process.env.CLUSTER_ID;
  config.env.keycloak_secret = process.env.DCM4CHE_KEYCLOAK_SECRET;
  config.env.keycloak_password = process.env.DCM4CHE_KEYCLOAK_PASSWORD;

  config.env.backup_server = process.env.DCM4CHE_BACKUP_SSH_SERVER;
  config.env.backup_folder = process.env.DCM4CHE_BACKUP_SSH_FOLDER
  config.env.backup_user = process.env.DCM4CHE_BACKUP_SSH_USER
  config.env.backup_password = process.env.DCM4CHE_BACKUP_SSH_PASSWORD
  return config
}

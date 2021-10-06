require('cypress-plugin-tab')

Cypress.on('uncaught:exception', (err, runnable) => {
    // returning false here prevents Cypress from
    // failing the test
    return false
})  

function login() {
    cy.visit(`https://ranchero.andes.gob.ar/p/${Cypress.env('rancher_cluster_id')}/apps`)
    cy.wait(4000)
    cy.contains('Log In')    
    cy.get('input[name=username]').type(Cypress.env('rancher_user'))
    cy.get('input[name=password]').type(Cypress.env('rancher_password'))
    cy.contains('Log In').click()
    cy.wait(12000)
}

function removePreviousDeployment() {
    cy.visit(`https://ranchero.andes.gob.ar/p/${Cypress.env('rancher_cluster_id')}/apps`)
    cy.wait(4000)
    cy.get('i.icon-vertical-ellipsis', {multiple: true}).first().click()
    cy.contains('Delete').click()
    cy.wait(1000)
    cy.contains('Delete').click()
    cy.wait(20000)
}

function createDeployment() {
    cy.visit(`https://ranchero.andes.gob.ar/p/${Cypress.env('rancher_cluster_id')}/apps/catalog`)
    cy.wait(12000)
    cy.contains('dcm4che')
    cy.contains('dcm4che').click()
    cy.wait(6000)
    cy.contains('.acc-label', 'Name').next().next().clear()
    cy.contains('.acc-label', 'Name').next().next().type('dcm4che')
    cy.contains('Dominio a utilizar').next().type('hpn.andes.gob.ar')
    cy.contains('AE Title').next().clear()
    cy.contains('AE Title').next().type('PACSHPN')
    // Passwords
    cy.contains('Andes Keykloak Secret').next().type(Cypress.env('keycloak_secret'))
    cy.contains('Keycloak password').next().clear()
    cy.contains('Keycloak password').next().type(Cypress.env('keycloak_password'))
    cy.contains('Password de usuario regular de Keycloak').next().clear()
    cy.contains('Password de usuario regular de Keycloak').next().type(Cypress.env('keycloak_password'))
    cy.contains('Password administrador de Postgres').next().clear()
    cy.contains('Password administrador de Postgres').next().type(Cypress.env('keycloak_password'))
    //  Volumenes
    cy.contains('Storage Class').next().type('{downArrow}{downArrow}{enter}')
    cy.contains('Tamaño del volumen de Elastic').next().clear()
    cy.contains('Tamaño del volumen de Elastic').next().type('50Gi')
    cy.contains('Tamaño del volumen de Logstash').next().clear()
    cy.contains('Tamaño del volumen de Logstash').next().type('50Gi')
    cy.contains('Tamaño del volumen de Keycloak').next().clear()
    cy.contains('Tamaño del volumen de Keycloak').next().type('50Gi')
    cy.contains('Tamaño del volumen de Postgres').next().clear()
    cy.contains('Tamaño del volumen de Postgres').next().type('50Gi')
    cy.contains('Tamaño del volumen de LDAP').next().clear()
    cy.contains('Tamaño del volumen de LDAP').next().type('50Gi')
    cy.contains('Tamaño del volumen de SLAPD').next().clear()
    cy.contains('Tamaño del volumen de SLAPD').next().type('50Gi')
    cy.contains('Tamaño del volumen de PACS').next().clear()
    cy.contains('Tamaño del volumen de PACS').next().type('1000Gi')
    // Backups
    cy.contains('Servidor').next().clear()
    cy.contains('Servidor').next().type(Cypress.env('backup_server')).tab().type(Cypress.env('backup_user')).tab().type(Cypress.env('backup_password')).tab().tab().type(Cypress.env('backup_folder'))

    cy.contains('Launch').click()
}

describe('Rancher', () => {
  it('Crear deploy de dcm4che', () => {
    login()
    // removePreviousDeployment()
    createDeployment()
  })
})

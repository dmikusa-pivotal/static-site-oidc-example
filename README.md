# Cloud Foundry & mod_auth_openidc Demo

This app is a demo for using Cloud Foundry and mod_auth_openidc through the PHP buildpack.

## Instructions

To deploy:

1. Create a variable file from `vars.yml.template` or edit one of the existing service specific templates.
2. Run `cf push --vars-file your-vars-file.yml`
3. Access the app in your browser. You should be asked to login through your Oauth2 provider. When successful, you should be redirect back to the app.

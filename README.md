# Cloud Foundry & mod_auth_openidc Demo

This app is a demo for using Cloud Foundry and mod_auth_openidc through the PHP buildpack.

## Instructions

To deploy:

1. Create a variable file from `vars.yml.template` or edit one of the existing service specific templates.
2. If you are using Pivotal SSO & deploying to a Cloud Foundry foundation that is using self-signed TLS certs, edit `.bp-config/httpd/extra/httpd-php.conf` and uncomment the line `OIDCSSLValidateServer Off`. This disabled validation of the TLS cert used by the OIDC provider.
2. Run `cf push --vars-file your-vars-file.yml`
3. Access the app in your browser. You should be asked to login through your Oauth2 provider. When successful, you should be redirect back to the app.

## Sample Configs

Other OIDC providers should work too, but here are some examples:

- [Google Auth](vars-google.yml)
- [UAA & Pivotal SSO](vars-uaa-sso.yml)

See the [mod_auth_openidc docs for more examples](https://github.com/zmartzone/mod_auth_openidc#quickstart-for-other-providers).

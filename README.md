# GHOST with MySQL DB
Docker image that allows running [Ghost](https://github.com/TryGhost/Ghost) in production mode,
and is a bit more configurable than the [official Ghost Docker image](https://registry.hub.docker.com/_/ghost/).
We are using MySQL DB now.

## Why yet another container for Ghost?

The official container for Ghost is fine for running in development mode, but it has the wrong
permissions for running in production. That, and the config file doesn't have any easy way to tweak
it.

This container uses the official Ghost image as it's base, has a more "environment aware"
`config.js` file, and uses these environment variables to tune the config.

## Quickstart

### build image
`docker build .`

### docker hub image
`thedigitalgarage/community`

### Create a project
`oc new-project ghost`

### Openshift add template
`oc create -f ghost.json -n openshift`

### Create an app using template
`oc new-app ghost.json`

### Configuration

There are three environment variables that can be configured:

* `GHOST_URL`: the URL of your blog (e.g., `http://www.example.com`)
* `MAIL_USER`: username on mailgun account
* `MAIL_PASSWORD`: password on mailgun account

Please visit this `http://support.ghost.org/mail` for mailing details.

### TheDigitalGarage Community Theme

https://github.com/thedigitalgarage/community-theme.git
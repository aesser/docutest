
# Playground to run docusaurus in a container

Based on https://www.knowledgehut.com/blog/web-development/how-to-dockerize-react-app



## Environment

Running Rancher Desktop on Windows 11. 

Issue with `` nerdctl compose ``

https://github.com/rancher-sandbox/rancher-desktop/issues/1993


Based on workaroung I tried to set .wslconfig in user directory, but that didn't seem to help

````

[wsl2]
guiApplications=false


````






# Website

This website is built using [Docusaurus 2](https://docusaurus.io/), a modern static website generator.

### Installation

```
$ yarn
```

### Local Development

```
$ yarn start
```

This command starts a local development server and opens up a browser window. Most changes are reflected live without having to restart the server.

### Build

```
$ yarn build
```

This command generates static content into the `build` directory and can be served using any static contents hosting service.

### Deployment

Using SSH:

```
$ USE_SSH=true yarn deploy
```

Not using SSH:

```
$ GIT_USER=<Your GitHub username> yarn deploy
```

If you are using GitHub pages for hosting, this command is a convenient way to build the website and push to the `gh-pages` branch.

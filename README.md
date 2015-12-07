# Static Base

![](https://semaphoreapp.com/api/v1/projects/09043b51-d38e-4bb9-ac3e-385ef0aebaeb/120867/shields_badge.png)

Static Base is a useful starter kit to help you develop static sites (or prototypes) faster.
It's a [Middleman](https://middlemanapp.com/) template that uses Slim, Sass, CoffeeScript, Autoprefixer and Livereload.

## Installation & usage

```bash
# Clone the template (use depth param in order not to copy the history)
git --depth 1 clone git@github.com:fs/static-base.git ~/.middleman/fs-static-base

# Scaffold a project using static-base template
middleman init sitename --template=fs-static-base --skip-bundle
cd sitename
bin/setup
```

## Development workflow

1. Start server with `bin/server`
2. Make changes in the `source` folder
3. Check out results in the browser on `http://localhost:4567`

## Manual deploy to Github Pages

Setup correct git remote and target host using environment variable:

```bash
export GIT_REMOTE=git@github.com:fs/static-base.git
export TARGET_HOST=example.com
```

Run `bin/deploy`

## Semaphore integration

### Test build

You can use [Semaphore](https://semaphoreci.com) to make sure your source code
will be built successfully.

Add these build commands:

```bash
bin/setup
bin/build
```

### Deploy automatically to Github Pages

* Deploy type: `General`
* Deployment Strategy: `Automatic`
* Deploy commands:

```bash
# git identity required for git push
git config --global user.email "firstname.lastname+semaphore@flatstack.com"
git config --global user.name "Semaphore"
export GIT_REMOTE=git@github.com:fs/static-base.git
export TARGET_HOST=example.com
bin/setup
bin/deploy
```
* SSH key: specify your ssh key or unique per project.


## Credits

Static Base is maintained by [Timur Vafin](http://github.com/timurvafin).
It was written by [Flatstack](http://www.flatstack.com) with the help of our
[contributors](http://github.com/fs/static-base/contributors).

[<img src="http://www.flatstack.com/logo.svg" width="100"/>](http://www.flatstack.com)

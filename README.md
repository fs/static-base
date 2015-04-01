# Source code for static site

![](https://semaphoreapp.com/api/v1/projects/09043b51-d38e-4bb9-ac3e-385ef0aebaeb/120867/shields_badge.png)

Minimalistic Middleman template that uses slim, sass, coffeescript, autoprefixer and livereload.

## Installation & usage

```bash
# Clone the template (use depth param in order not to copy the history)
git --depth 1 clone git@github.com:fs/static-base.git ~/.middleman/fs-static-base

# Scaffold a project using static-base template
middleman init sitename --template=fs-static-base --skip-bundle
cd sitename
bin/bootstrap
```

## Development workflow

1. Start server with `bin/server`
2. Make changes in the `source` folder
3. Checkout results in the browser on `http://localhost:4567`

## Manual deploy to Github pages

Setup correct git remote and target host using environment variable:

```bash
export GIT_REMOTE=git@github.com:fs/static-base.git
export TARGET_HOST=example.com
```

Run `bin/deploy`

## Semaphore integration

### Test build

You can use [Semaphore](https://semaphoreapp.com) to make sure you source code
will be build successfully.

Add these build commands:

```bash
bin/bootstrap
bin/build
```

### Deploy automatically to Github pages

* Deploy type: `General`
* Deployment Strategy: `Automatic`
* Deploy commands:

```bash
# git identity required for git push
git config --global user.email "firstname.lastname+semaphore@flatstack.com"
git config --global user.name "Semaphore"
export GIT_REMOTE=git@github.com:fs/static-base.git
export TARGET_HOST=example.com
bin/bootstrap
bin/deploy
```
* SSH key: specify your ssh key or unique per project.


## Credits

Static Base is maintained by [Timur Vafin](http://github.com/timurvafin).
It was written by [Flatstack](http://www.flatstack.com) with the help of our
[contributors](http://github.com/fs/static-base/contributors).

[![Flatstack](https://avatars0.githubusercontent.com/u/15136?v=2&s=200)](http://www.flatstack.com)

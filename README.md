# Source code for static site

![](https://semaphoreapp.com/api/v1/projects/09043b51-d38e-4bb9-ac3e-385ef0aebaeb/120867/shields_badge.png)

Minimalistic Middleman template that uses slim, sass, coffeescript and autoprefixer.

## Installation & usage

```bash
# Clone the template
git clone git@github.com:fs/static-base.git ~/.middleman/fs-static-base

# Scaffold a project using static-base template
middleman init sitename --template=fs-static-base
cd sitename
bin/bootstrap
```

## Development workflow

1. Start server with `bin/server`
2. Make changes in the `source` folder
3. Checkout results in the browser on `http://localhost:4567`

## Manual deploy to Github pages

Run `bin/deploy`

Make sure you have specified correct `source/CNAME`

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

* Deploy type: `Capistrano`
* Deployment Strategy: `Manual`
* Deploy commands:

```bash
# git identity required for git push
git config --global user.email "firstname.lastname+semaphore@flatstack.com"
git config --global user.name "Semaphore"
bin/deploy
```
* SSH key: specify your ssh key or unique per project.

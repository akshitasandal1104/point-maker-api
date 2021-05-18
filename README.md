# Project

Point Maker API

## Install

### Clone the repository

```shell
git clone https://github.com/akshitasandal1104/point-maker-api.git
cd point-maker-api
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.6.6`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.6.6
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### Initialize the database

```shell
rails db:create db:migrate
```

### Add heroku remotes

Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```shell
heroku git:remote -a glacial-scrubland-15511
```

## Serve

```shell
rails s
```

## Deploy

### With Heroku pipeline (recommended)

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI.

### Directly to production (not recommended)

Push to Heroku production remote:

```shell
git push heroku master
```
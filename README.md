# Picnic
🧺
Generated via Hanami 2.0 `hanami new` command

This is an example Hanami project to demonstrate some of Hanami's usage.

Example APIs:
- GET /
- GET /food

## Install

If you do not have Postgres installed, you can install it using Homebrew, asdf or by following the installation instruction on the [PostgreSQL](https://www.postgresql.org/) website.

Run bundle install to install on required gems (Ruby 3.1 or above is required)
`bundle install`

### DB Setup
```
$ createdb picnic_development
$ createdb picnic_test
```
Set `database_url` in .env and .env.test files if you are using non-default Postgres setup.

Run migrations
```
$ bundle exec rake db:migrate
$ HANAMI_ENV=test bundle exec rake db:migrate
```

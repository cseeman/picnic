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
I am being lazy, so if you want some food you need to boot up a console and insert into the DB using the ROM relation.

```
hanami console
picnic[development]> food = app["persistence.rom"].relations[:food]
=> #<Picnic::Persistence::Relations::Food name=ROM::Relation::Name(food) dataset=#<Sequel::Postgres::Dataset: "SELECT \"food\".\"id\", \"food\".\"name\", \"food\".\"description\" FROM \"food\" ORDER BY \"food\".\"id\"">>
picnic[development]> food.insert(name: "Sausage Rolls", description: "Savoury pastry meal, popular in current and former Commonwealth nations, consisting of sausage meat wrapped in puff pastry.")
=> 3
picnic[development]> food.to_a.count
=> 3
```
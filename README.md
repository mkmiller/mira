# Mira Comics

**Mira** is a showcase website written in Rails to provide information about latest comics and serve web comics. It also has contact and bio sections.

## Dependencies
* Ruby 2.3.1
* Rails 5.0.0.1
* FriendlyId 5.1.0
* Browserify Rails
* Postgres >= 9.3.5

## ENV variables
* CONTACT_EMAIL - the email to which contact forms are sent

## Setup
```
$ bundle install
$ npm install
$ rails server
```

## Tests
Tests are minitest and can be run with rake.

```
$ rails test
```

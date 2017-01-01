Event Tracker
==============================================

[![Latest Version](https://img.shields.io/github/release/karllhughes/event-tracker.svg?style=flat-square)](https://github.com/karllhughes/event-tracker/releases)
[![Software License](https://img.shields.io/badge/license-APACHE%202.0-brightgreen.svg?style=flat-square)](license.md)
[![Build Status](https://img.shields.io/travis/karllhughes/event-tracker/master.svg?style=flat-square&1)](https://travis-ci.org/karllhughes/event-tracker)

A simple Rails application to track and organize events that I might want to attend. I built this as an excuse to dive back into Ruby on Rails, but feel free to use it if you'd like.


## Application Setup

### Tech requirements

- [Ruby 2.3](https://www.ruby-lang.org/)
- [Rails 5.0](http://guides.rubyonrails.org/)
- [Postgresql 9.5](https://www.postgresql.org/)

### Local setup

1. Clone this repo locally.

2. Run `bundle install` to get the dependencies installed.

3. Run database migrations: `rails db:setup`.

4. (Optional) Seed the database with some dummy data: `rails db:seed`.

5. Run `rails server`. The app should be running on `localhost:3000`.


### Heroku setup 

1. Follow the [standard instructions](https://devcenter.heroku.com/articles/getting-started-with-rails5) for setting up/deploying a Rails 5 app.

2. Add `HTTP_USERNAME` and `HTTP_PASSWORD` in order to lock down create/edit/delete.

3. Ensure that your application is running on Heroku. That's it!


## Configuration

```env
# Basic auth username
HTTP_USERNAME=admin
# Basic auth password
HTTP_PASSWORD=

```


## Testing
Run tests via the command line: `rails test`.

# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) 
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### Added
- Nothing yet.

### Changed
- Nothing yet.

### Removed
- Nothing yet.

## [0.3.0] - 2017-01-02
### Added
- Viewport head element to fix mobile scaling issue and favicon.
- Site name variable and meta config file.
- Titles to pages: Home, single event, edit event, create event, sorting events.
- Navbar with logo, link to home page, site name.
- New dropdown for selecting order of events on home page.

### Changed
- Hiding past events by default.

### Removed
- Unused Bootstrap JS files.

## [0.2.1] - 2017-01-01
### Changed
- Fixed lots of bugs that cropped up in prod, not local.

## [0.2.0] - 2017-01-01
### Added
- Added Basic Auth to all modification-related routes.
- Deployment information for Heroku.

### Changed
- Moved to Postgresql for the primary database.
- ID field uses UUID string generated by Postgresql.

## [0.1.0] - 2017-01-01
### Added
- Basic event creation/edit functionality for initial release.
- Some simple tests for the model and controller.
- Bootstrap v4 framework for styling.
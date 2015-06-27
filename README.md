# README

This won't currently win any design awards. Should probably add bootstrap. Need
to tweak the scrolling check to create a smoother scroll, probably with some preload.
Haven't gotten around to autocomplete yet, will probably just throw in lookahead
or some decent library. Could optimize Handlebars template compilation. Could use
promises instead of custom events for loading.

Current external dependencies: lodash.js, handlebars.js

### Part 1

#### API Requests to Flickr
See the [lib/flickr_api](https://github.com/jrob8577/flickr_app/tree/master/lib/flickr_api) directory

#### Load pictures in a continuous scroll
See the [app/assets/javascripts/flickr](https://github.com/jrob8577/flickr_app/tree/master/app/assets/javascripts/flickr) directory

### Part 2

#### Tap image brings up larger image with details
See the [app/assets/javascripts/flickr/flickr_photo_viewer](https://github.com/jrob8577/flickr_app/blob/master/app/assets/javascripts/flickr/flickr_photo_viewer.coffee)

### Part 3

#### Add details to grid view
Wasn't sure what this meant :shrug:

### Part 4

#### Add a search bar and run a search for images
See the [app/assets/javascripts/flickr](https://github.com/jrob8577/flickr_app/tree/master/app/assets/javascripts/flickr) directory

Currently implemented to search by tag, but switching out to text search is easy enough
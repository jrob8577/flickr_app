# README

### TODOS
* Tweak scrolling to begin preload in advance of scroll to end
* Ensure enough images are loaded initially
* Autocomplete (lookeahead looks fun)
* Handlebars compilation optimization (should compile and cache, instead of recompile on item instantiation)
* Some jankiness in flickr_scroller now, but was tired of misaligned thumbnails
* Photo viewer should probably use a data provider for consistency
* Play with promises for loading (get rid of custom events?)

Current external dependencies: lodash.js, handlebars.js, foundation.css/js

### 6/27
* Shitcanned turbolinks - is that ever useful on a JS enabled site?
* Added foundation for more pretty + basic mobile - improved image detail modal

### 6/26
* API Requests to Flickr: [lib/flickr_api](https://github.com/jrob8577/flickr_app/tree/master/lib/flickr_api)
* Continuous Scroll: [app/assets/javascripts/flickr](https://github.com/jrob8577/flickr_app/tree/master/app/assets/javascripts/flickr)
* Click image for details: [app/assets/javascripts/flickr/flickr_photo_viewer](https://github.com/jrob8577/flickr_app/blob/master/app/assets/javascripts/flickr/flickr_photo_viewer.coffee)
* Basic search bar (by tag): [app/assets/javascripts/flickr](https://github.com/jrob8577/flickr_app/tree/master/app/assets/javascripts/flickr)

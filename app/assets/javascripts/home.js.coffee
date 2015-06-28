# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  scroller = new FlickrScroller(new InterestingnessData, '#flickr')

  $('#search-box').on 'keyup', (event) ->
    if event.keyCode == 13
      scroller.reset(new TagSearchData)

    event.stopPropagation()

  $('#reset').on 'click', (event) ->
    scroller.reset(new InterestingnessData)
class FlickrSearch
  constructor: ->
    @page = 1
    @per_page = 100

  fetch_next: (callback) ->
    $.get '/flickr/search', @params(), (result) ->
      callback result.photos.photo

    @page += 1

    @

  params: ->
    page: @page
    per_page: @per_page
    tag: $('#search-box').val()


@.FlickrSearch = FlickrSearch
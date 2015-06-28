class DataProvider
  constructor: (url) ->
    @page = 1
    @per_page = 78
    @url = url

  fetch_next: (callback) ->
    $.get @url, @params(), (result) ->
      callback result.photos.photo

    @page += 1

    @

  params: ->
    page: @page
    per_page: @per_page

@.DataProvider = DataProvider
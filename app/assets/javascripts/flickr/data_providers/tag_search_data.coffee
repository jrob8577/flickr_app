class TagSearchData extends DataProvider
  url: '/flickr/search'

  constructor: ->
    super(@url)

  params: ->
    _.merge super,
      tag: $('#search-box').val()


@.TagSearchData = TagSearchData
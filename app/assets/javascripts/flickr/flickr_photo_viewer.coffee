class FlickrPhotoViewer
  constructor: (id) ->
    @id = id
    @detail_template = Handlebars.compile $('#photo-template').html()
    @data = {}

    $(@).on 'ready', @render
    @fetch()

  render: ->
    console.log @data
    $(@).off 'ready'

    @el = $(@detail_template(@data))
    $(@el, '#close').on 'click', @die

    @el.appendTo('body').hide().fadeIn(500)

  fetch: ->
    $.get "/flickr/photo/#{@id}", (result) =>
      @data = result.photo
      $(@).trigger 'ready'

  die: =>
    $(@).off
    @el.fadeOut 200, () =>
      @el.remove()

@.FlickrPhotoViewer = FlickrPhotoViewer
class FlickrPhotoViewer
  constructor: (id) ->
    @id = id
    @modal = $('#photo-modal')
    @detail_template = Handlebars.compile $('#photo-template').html()

    $(@).on 'ready', @render
    @fetch()

  render: ->
    console.log @data
    $(@).off 'ready'

    @el = $(@detail_template(@data))
    @el.appendTo(@modal)

    $('a#close').on 'click', @close_viewer

    @modal.foundation('reveal', 'open')

  fetch: ->
    # TODO use a data-provider and get rid of custom envents
    $.get "/flickr/photo/#{@id}", (result) =>
      @data = result.photo
      $(@).trigger 'ready'

  close_viewer: =>
    @modal.foundation('reveal', 'close')
    $('a#close').off
    @modal.empty()

@.FlickrPhotoViewer = FlickrPhotoViewer
class FlickrScroller
  constructor: (data_provider, element_id) ->
    @data_provider = data_provider
    @el = $(element_id)

    @photo_template = Handlebars.compile $('#item-template').html()
    @paging_template = Handlebars.compile $('#paging-template').html()

    @scrolling = false
    $(window).scroll @scroll

    @scroll()

  scroll: =>
    if @should_scroll()
      @toggle_scroll()

      @data_provider.fetch_next (photos) =>
        @data_to_html(photos, @).appendTo(@el).hide().fadeIn(300)
        @toggle_scroll()

  should_scroll: ->
    ! @scrolling && @scroll_top() == $(document).height()

  scroll_top: ->
    $(window).scrollTop() + $(window).height()

  data_to_html: (photos) ->
    elements = _.map photos, @photo_to_html, @
    # TODO make this configurable
    elements = _.chunk elements, 6
    # TODO should probably templatize this, nasty to hide this here
    elements = $((_.map elements, (item_array) ->
      "<div class=\"row photo-row\">#{item_array.join('')}</div>").join(''))

    $('a.item', elements).on 'click', (event) ->
      event.stopPropagation()
      new FlickrPhotoViewer $(@).data('id')

    elements

  photo_to_html: (photo) ->
    @photo_template photo

  toggle_scroll: ->
    if @scrolling
      $('.paging-message').remove()
    else
      @el.append @paging_template(page: @data_provider.page)

    @scrolling = ! @scrolling

  reset: (new_provider) ->
    @el.empty()
    @data_provider = new_provider

    @scrolling = false
    $(window).scroll @scroll

    @scroll()


@.FlickrScroller = FlickrScroller
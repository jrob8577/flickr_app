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
        @data_to_html(photos, @).appendTo(@el).hide().fadeIn(500)
        @toggle_scroll()

  should_scroll: ->
    ! @scrolling && @scroll_top() == $(document).height()

  scroll_top: ->
    $(window).scrollTop() + $(window).height()

  data_to_html: (photos) ->
    elements = $((_.map photos, @photo_to_html, @).join(''))
    $(elements, '.item').on 'click', (event) ->
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
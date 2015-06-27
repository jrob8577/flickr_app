module FlickrApi
  class TextSearch < RequestParams
    METHOD = 'flickr.photos.search'

    def params
      super.merge text: @info.fetch(:text)
    end
  end
end
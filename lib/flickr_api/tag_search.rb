module FlickrApi
  class TagSearch < RequestParams
    METHOD = 'flickr.photos.search'

    def params
      super.merge tags: @info.fetch(:tag)
    end
  end
end
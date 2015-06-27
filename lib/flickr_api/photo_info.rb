module FlickrApi
  class PhotoInfo < RequestParams
    METHOD = 'flickr.photos.getInfo'

    def params
      super.merge photo_id: @info.fetch(:id)
    end
  end
end
require 'multi_json'

module FlickrApi
  class TagHotList < RequestParams
    METHOD = 'flickr.tags.getHotList'

    def self.cache
      @@cache ||= MultiJson.load(
        Request.new(TagHotList, {}).response, symbolize_keys: true )
    end

    def params
      super.merge period: 'week', count: 200
    end
  end
end
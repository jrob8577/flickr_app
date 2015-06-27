require 'net/http'

module FlickrApi
  class Request
    API_ROOT = 'https://api.flickr.com/services/rest/'

    def initialize(info_type, request_params = {})
      @request_info = info_type.new request_params
    end

    def response
      @response ||= Net::HTTP.get_response(uri).body
    end

    private

    def uri
      @uri ||= begin
        u = URI API_ROOT
        u.query = URI.encode_www_form params

        u
      end
    end

    def params
      {
        api_key: '38b29a5afade791aa0f33c110cc01b67',
        format: 'json',
        nojsoncallback: 1
      }.merge @request_info.params
    end
  end
end
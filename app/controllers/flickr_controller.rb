require 'net/http'

class FlickrController < ApplicationController
  def index
    uri = URI('https://api.flickr.com/services/rest/')
    uri.query = URI.encode_www_form request_params

    res = Net::HTTP.get_response(uri)

    render json: res.body
  end

  def request_params
    {
      method: 'flickr.interestingness.getList',
      api_key: '38b29a5afade791aa0f33c110cc01b67',
      format: 'json',
      nojsoncallback: 1
    }

    # 38b29a5afade791aa0f33c110cc01b67

    # Secret:
    # 6032bd102c9a21f8
  end
end
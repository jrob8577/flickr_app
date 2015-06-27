require 'net/http'

class FlickrController < ApplicationController
  def interestingness
    render json: FlickrApi::Request.new(FlickrApi::Interestingness, params).response
  end

  def photo_info
    render json: FlickrApi::Request.new(FlickrApi::PhotoInfo, params).response
  end

  def tags
    render json: FlickrApi::TagHotList.cache
  end

  def search
    render json: FlickrApi::Request.new(FlickrApi::TagSearch, params).response
  end
end
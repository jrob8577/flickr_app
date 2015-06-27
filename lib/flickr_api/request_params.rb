module FlickrApi
  class RequestParams
    METHOD = 'if you see this its wrong'

    def initialize(info = {})
      @info = info
    end

    def params
      {
        method: self.class::METHOD,
        page: @info[:page] || 1,
        per_page: @info[:per_page] || 100
      }
    end
  end
end
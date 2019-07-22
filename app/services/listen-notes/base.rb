

class Base
  attr_accessor :errors

  @response = Unirest.get "https://listen-api.listennotes.com/api/v2/podcasts/282e0f819eae4272a7ce84605312cc45?sort=recent_first",
    headers:{
      "X-ListenAPI-Key" => "dab4d93e79bb4a08b7d91f4402aa7ffc",
    }

    def initialize(response)
      response.each do |name, value|

      end
    end
  end

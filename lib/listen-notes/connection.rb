require 'faraday'
require 'json'

class Connection
  BASE = 'https://listen-api.listennotes.com/api/v2'

  def self.api
    Faraday.new(url: BASE) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['X-ListenAPI-Key'] = ENV['LISTEN_NOTES_KEY']
    end
  end
end

# frozen_string_literal: true

module FunTranslations
  module Connection
    BASE_URL = 'https://api.funtranslations.com'

    def connection
      Faraday.new(options) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.request :url_encoded
      end
    end
    private
    def options
      headers = {
        accept: 'aplication/json',
        'Content-Type' => 'application/x-www-from-urlencoded',
        user_agent: "fun_translations gem/#{FunTranslations::VERSION}"
      }

      {
        headers: headers,
        url: BASE_URL
      }
    end
  end
end

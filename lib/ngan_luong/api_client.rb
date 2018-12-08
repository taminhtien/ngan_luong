module NganLuong
  class APIClient
    def initialize(config = NganLuong.config)
      @config = config
    end

    def get(path)
      send_request(:get, path)
    end

    def post(path, request_body)
      send_request(:post, path, request_body)
    end

    def send_request(method, path, body_hash = {})
      _make_request(method, path, body_hash) do |result|
        response = NganLuong::Response.new(
          result.code,
          result.body
        )

        if response.ok?
          response
        else
          raise RequestError, response.body
        end
      end
    end

    private

    attr_reader :config

    def _make_request(method, path, body_hash)
      uri = URI(config.base_uri)
      yield Net::HTTP.post_form(uri, body_hash)
    end
  end
end
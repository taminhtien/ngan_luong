module NganLuong
  class Response
    attr_reader :status_code, :headers, :body

    def initialize(status_code, body)
      @status_code = status_code.to_i
      @body = JSON.parse(Hash.from_xml(body).to_json)
    end

    def ok?
      status_code == 200
    end

    def error?
      !ok?
    end
  end
end
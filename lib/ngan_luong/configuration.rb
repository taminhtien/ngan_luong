module NganLuong
  class Configuration
    attr_accessor :base_uri, :merchant_id, :merchant_pass, :receiver_email

    def initialize(base_uri = '', merchant_id = '', merchant_pass = '', receiver_email = '')
      @base_uri = base_uri
      @merchant_id = merchant_id
      @merchant_pass = merchant_pass
      @receiver_email = receiver_email
    end
  end
end

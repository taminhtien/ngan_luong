module NganLuong
  class Payment
    class << self
      def config
        NganLuong.config
      end

      def client
        NganLuong::APIClient.new
      end

      def get_checkout_url(data)
        data = {
          merchant_id: config.merchant_id,
          merchant_password: Digest::MD5.hexdigest(config.merchant_pass),
          receiver_email: config.receiver_email,
          version: '3.1',
          function: 'SetExpressCheckout'
        }.merge(data)

        client.post('', data)
      end
    end
  end
end

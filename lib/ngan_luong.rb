require 'ngan_luong/version'
require 'ngan_luong/configuration'
require 'ngan_luong/response'
require 'ngan_luong/api_client'
require 'ngan_luong/payment'

module NganLuong
  class << self
    def configure
      yield(config)
    end

    def config
      @config ||= Configuration.new
    end
  end

  class RequestError < ::StandardError; end
end

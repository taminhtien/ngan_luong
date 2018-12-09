$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'ngan_luong'
require 'rspec'
require 'webmock/rspec'
require 'vcr'
require 'dotenv/load'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.hook_into :webmock
end

RSpec.configure do |config|
  config.before(:each) do
    NganLuong.configure do |c|
      c.base_uri = ENV['NGANLUONG_BASE_URI']
      c.merchant_id = ENV['NGANLUONG_MERCHANT_ID']
      c.merchant_pass = ENV['NGANLUONG_MERCHANT_PASS']
      c.receiver_email = ENV['NGANLUONG_RECEIVER_EMAIL']
    end
  end
end

require 'spec_helper'

describe NganLuong::Payment do
  describe '.get_checkout_url' do
    it 'creates checkout url' do
      VCR.use_cassette('ngan_luong/checkout_url') do
        result = NganLuong::Payment.get_checkout_url(
          order_code: '123123123',
          total_amount: 1_000_000,
          payment_method: 'nl',
          bank_code: 'vcb',
          buyer_fullname: 'Ta Minh Tien',
          buyer_email: 'taminhtien1993@gmail.com',
          buyer_mobile: '0937006139',
          order_description: 'Test order',
          tax_amount: 0,
          discount_amount: 0,
          fee_shipping: 0,
          return_url: 'http://localhost:3000/return_url',
          cancel_url: 'http://localhost:3000/cancel_url',
          buyer_address: '125 Dong Van Cong, Phuong Thanh My Loi, Quan 2, TP. HCM',
          cur_code: 'vnd',
          lang_code: 'vi'
        )

        expect(result.ok?).to be_truthy
        expect(result.body['result']['checkout_url']).to be_present
      end
    end
  end
end

# Ngan Luong Ruby client

Ngan Luong is an Online Payment system that famous in Vietnam. This library is a Ruby client to use their API.

## Installation

```ruby
gem install ngan_luong
```

## Usage

Create configuration file in `config/initializers/ngan_luong`

```
NganLuong.configure do |config|
  config.base_uri = Rails.application.secrets.ngan_luong_base_uri
  config.merchant_id = Rails.application.secrets.ngan_luong_merchant_id
  config.merchant_pass = Rails.application.secrets.ngan_luong_merchant_pass
  config.receiver_email = Rails.application.secrets.ngan_luong_receiver_email
end
```

### Get checkout URL

```
Nganluong::Payment.get_checkout_url(
  order_code: order_code,
  total_amount: total_amount,
  payment_method: PAYMENT_METHOD,
  bank_code: BANK_CODE,
  buyer_fullname: buyer_fullname,
  buyer_email: buyer_email,
  buyer_mobile: buyer_mobile,
  order_description: order_description,
  tax_amount: tax_amount,
  discount_amount: discount_amount,
  fee_shipping: fee_shipping,
  return_url: return_url,
  cancel_url: cancel_url,
  buyer_address: buyer_address,
  cur_code: cur_code',
  lang_code: lang_code
)
```

### PAYMENT_METHOD

```
['nl', 'visa', 'atm_online', 'atm_offline', 'nh_offline', 'ib_online', 'credit_card_prepaid']
```

### BANK_CODE

```
['vcb', 'dab', 'tcb', 'mb', 'vib', 'icb', 'exb', 'acb', 'hdb', 'msb', 'nvb', 'vab', 'vpb', 'scb', 'gpb', 'agb', 'bidv', 'ojb', 'pgb', 'shb', 'tpb', 'nab', 'sgb', 'bab']
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/taminhtien/ngan_luong. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
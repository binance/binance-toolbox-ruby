#!/usr/bin/env ruby
# frozen_string_literal: true

require 'binance'

# it's recommend to test order on spot testnet.
# See https://dev.binance.vision/t/99 for how to create testnet account.

key = ''
secret = ''

# By setting the base_url, you can send the request to the testnet.
# Then the key&secret must be from your testnet account.
client = Binance::Spot.new(key: key, secret: secret, base_url: 'https://testnet.binance.vision')

begin
  result = client.new_order(symbol: 'BTCUSDT', side: 'BUY', type: 'LIMIT', quantity: 0.001, price: 50_000,
                            timeInForce: 'GTC')
  puts result
rescue Binance::ClientError => e
  puts e.response[:status]
  puts e.response[:body]
rescue Binance::ServerError => e
  puts 'Receive Server Error'
  raise e
end

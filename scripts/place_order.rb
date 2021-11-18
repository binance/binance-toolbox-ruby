#!/usr/bin/env ruby
# frozen_string_literal: true

require 'binance'

key = ''
secret = ''

client = Binance::Spot.new(key: key, secret: secret)

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

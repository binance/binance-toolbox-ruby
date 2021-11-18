#!/usr/bin/env ruby
# frozen_string_literal: true

require 'binance'

key = ''
secret = ''

client = Binance::Spot.new(key: key, secret: secret)
puts client.account

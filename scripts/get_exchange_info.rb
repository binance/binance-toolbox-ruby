#!/usr/bin/env ruby
# frozen_string_literal: true

require 'binance'

client = Binance::Spot.new
puts client.exchange_info

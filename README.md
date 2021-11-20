# Binance Toolbox in Ruby

A collection of simple ruby scripts that work on gem `binance-connector-ruby`. 

## What is this gem

It's newly built nice gem includs all Binance Spot API endpoints. 

- The github repository: https://github.com/binance/binance-connector-ruby
- The gem: https://rubygems.org/gems/binance-connector-ruby
- The document: https://www.rubydoc.info/gems/binance-connector-ruby

## Installation

To run these scripts, it's required to install the gem by:

```shell

gem install binance-connector-ruby

```

or just

```shell

bundle install

```

## How to run script

It's simple to run as:

```shell

> ./scripts/get_ticker.rb

```


## API key & secret

To get user's information, e.g account balance, you will need to setup API key/secret from 
https://www.binance.com/en/my/settings/api-management
  
If you see API server returns error "Invalid API-key, IP, or permissions for action.", please check this topic https://dev.binance.vision/t/why-do-i-see-this-error-invalid-api-key-ip-or-permissions-for-action/93 <br/>
This forum has plenty of topics covering most of common questions, it's the best place to ask or search API related questions.

## License

MIT

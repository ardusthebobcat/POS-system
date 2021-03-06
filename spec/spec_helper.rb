ENV['RACK-ENV'] = 'test'

require('sinatra/activerecord')
require('rspec')
require("product")
require('purchase')
require('pg')

RSpec.configure do |config|
  config.after(:each) do
    Product.all().each() do |product|
      product.destroy()
    end
    Purchase.all().each() do |purchase|
      purchase.destroy()
    end
  end
end

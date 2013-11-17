require 'rspec'
require 'acme/umlautify'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter = 'documentation'
end

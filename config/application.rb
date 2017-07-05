
require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Zonke24
  class Application < Rails::Application
   
  end
end

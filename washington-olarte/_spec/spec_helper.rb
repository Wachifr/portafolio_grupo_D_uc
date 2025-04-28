require 'capybara/rspec'
require 'rack/jekyll'
require 'rack/test'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  Capybara.app = Rack::Jekyll.new(force_build: true)
end

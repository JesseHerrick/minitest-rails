ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'minitest/autorun'
require 'minitest/pride'
require 'database_cleaner'
require 'fabrication'

Fabrication.configure do |config|
  fabricator_path = "test/fabricators"
end

module TestHelper
  def setup
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean_with(:truncation)
    DatebaseCleaner.start
  end

  def teardown
    DatebaseCleaner.clean
  end
end

require 'simplecov'
SimpleCov.start 'rails' do
  add_filter "/test/"
end
require 'codecov'
SimpleCov.formatter = SimpleCov::Formatter::Codecov
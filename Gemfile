source 'https://rubygems.org'
ruby '>= 2.5.1'

gem 'jsend', :git => 'https://github.com/AlvaroMaceda/jsend-ruby', :branch => 'master'
# gem 'jsender', :git => 'https://github.com/hetznerZA/jsender', :branch => 'master'
gem 'sinatra', '~> 2.0.0'
# gem 'sinatra-contrib', '~> 2.0.3'
gem 'sinatra-cross_origin', '~> 0.4.0'

# gem 'sinatra-jsend'
# gem 'mongo', '~> 2.5'

group :development do
  gem 'dotenv', '~> 2.5.0'
  gem 'rake', '~> 12.3.0'
  gem 'rerun', '~> 0.11.0'
  gem 'rubocop'
end

group :test do
  gem 'cucumber', :require => false
  # gem 'cucumber-api-steps', :require => false
  gem 'jsonpath', :require => false
  gem 'nokogiri', :require => false

  # database_cleaner is not required, but highly recommended
  # gem 'database_cleaner'
  gem 'factory_bot', "~> 4.0"
  gem 'nokogiri', :require => false # required by cucumber-api-steps
  gem 'rack-test', '~> 0.8.2'
  gem 'rspec', '~> 3.7.0'
end

# frozen_string_literal: true
require 'dotenv/load'
require 'rspec/core/rake_task'

API_HOST = ENV['API_HOST']
API_PORT = ENV['API_PORT']

task default: :start

task :start do
  sh "rerun -- rackup --port #{API_PORT} -o 0.0.0.0"
end

# task :start_dev
#   sh "rerun --background -- rackup config.dev.ru --port #{API_PORT} -o 0.0.0.0"
# end

task :test do
  sh 'rspec'
end


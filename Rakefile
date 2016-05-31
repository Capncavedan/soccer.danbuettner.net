require 'rubygems'
require 'bundler/setup'

require_relative 'app'

unless ['staging', 'production'].include?(ENV['RACK_ENV'])
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = "--color --order random"
  end

  task default: [:spec]
end
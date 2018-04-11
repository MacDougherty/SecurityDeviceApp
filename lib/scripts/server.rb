#!/usr/bin/env ruby

# Load Rails
ENV['RAILS_ENV'] = ARGV[0] || 'production'
DIR = File.dirname(__FILE__) 
require DIR + '/../../config/environment'

def run_server
  Apiotics::Server.new
end

begin
  run_server
rescue => e
  puts e
  if true
    sleep 5
    retry
  end
end
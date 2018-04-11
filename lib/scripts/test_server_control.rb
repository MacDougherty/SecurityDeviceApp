#!/usr/bin/env ruby

# add the ontop: true option to see the output of the server in the console in which you run rake comms:start

require 'daemons'

Daemons.run("lib/scripts/test_server.rb", ontop: false)
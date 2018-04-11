#!/usr/bin/env ruby

# add the ontop: true option to see the output of the server in the console in which you run rake comms:start

require 'daemons'

Daemons.run('lib/scripts/server.rb', ontop: false)
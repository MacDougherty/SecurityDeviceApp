# Security Device App

## Overview

This repository contains code to run a Ruby on Rails web application for a "security" device, which consists of a motion sensor, a sound sensor, and a vibration sensor connected to a TI C32200sf board via a Grove Base Boosterpack.

The web application allows users to see data from the sensors in a browser window.

## Requirements

In order to use this code, you will need to have rails installed and bundler installed.

To see the live updating web app functionality implemented in the `live_update`branch or the `live_update_red` branch, you will also need to have a redis server installed. If you are on a mac, you can do this by running `brew install redis`.

## Set up

Connect one end of a USB cable to the port at the top of the TI C32200SF board and the other end to a USB port on your computer.

Connect the three sensors to the following ports on the Grove Base Boosterpack:* Connect the vibration sensor to port J6.* Connect the sound sensor to port J9.
* Connect the motion sensor to port J11.  


For more information about the sensors and their interfaces, see [the Apiotics Portal page for a Security Device worker](https://portal.apiotics.com/workers/108).

## Branches

There are four branches in this repository.

* The `master` branch contains code for a rails application for the Security Device.
* The `red_row` branch builds off the master branch and contains additional logic to turn the background of the row for any device red if the devices sensors detect motion or vibration above a certain threshold, or if the sound sensor value is greater than 100.
* The `live_update` branch also builds off the master branch but contains additional logic to automatically update the data from the sensors on the web app without needing to refresh the page.
* The `live_update_red` branch contains the additional logic from the change_display branch AND the live_update branch, to both update the display AND automatically update the web app with data from the sensors.

Note: For the `live_update` branch and the `live_update_red` branch, you will need to install a redis server in order to see updates on the web app without refreshing the page.


## Implementation

1. Decide which branch in the repository has the functionality you want, and clone it onto your local machine.

2. If you are using Linux, uncomment the following line in the Gemfile:
`# gem 'mini_racer', platforms: :ruby`

3. Run 'rake db:migrate`.

4. To start communication with the web app, run `rake dev_comms:start`.

5. If you are using the live_update or live_app_update branch and want to see the values update automatically, you will need to start a redis server by opening a new terminal and running `redis-server`.  Leave this terminal open in the background.  If you are using the `master` or `app_update` branch, skip this step.

6. To start your Rails server, run `rails server` (or `rails s`).

7. To see the web app, browse to <http://localhost:3000/security_devices>.

Note: 
If you decide to modify any code in the rails app, you will need to run `dev_comms:restart` (or `dev_comms:stop` then `dev_comms:start`) in order to see the updated functionality on the web app. 

## References
* [Ruby on Rails Apiotics Gem](https://portal.apiotics.com/docs/4)
* [Security Device page in Apiotics Portal](https://portal.apiotics.com/workers/108)
# Security Device App

## Overview
This repository contains code to run a ruby on rails web app for a "security device," which consists of a motion sensor, a sound sensor, and a vibration sensor connected to a TI C32200sf board.

## Pre-Reqs

In order to use this code, the user will need to have rails installed and bundler installed. For more information on installing rails and bundler see …(add reference ) 

To see the live updating web app functionality implemented in the “live_update” branch or the “live_update_red” branch, the user must also have a redis server installed.

## Branches

There are four branches in this repository.

* The `master` branch contains code for a rails application for the Security Device.
* The `red_row` branch builds off the master branch and contains additional logic to turn the background of the row for any device red if the devices sensors detect motion or vibration above a certain threshold, or if the sound sensor value is greater than 100.
* The `live_update` branch also builds off the master branch but contains additional logic to automatically update the data from the sensors on the web app without needing to refresh the page.
* The `live_update_red` branch contains the additional logic from the change_display branch AND the live_update branch, to both update the display AND automatically update the web app with data from the GSR sensor.

Note: The `live_update` branch and `live_update_red` branch both require a redis server to be installed by the user in order to see the live updates on the web app.

## Implementation

1. Decide which branch in the repository has the functionality you want, and clone it onto your local machine.

2. Run 'rake db:migrate

3. To start communication with the web app, run `rake dev_comms:start`.

4. If you are using the live_update or live_app_update branch and want to see the values update automatically, you will need to start a redis server by opening a new terminal and running `redis-server`.  Leave this terminal open in the background.  If you are using the master or app_update branch, skip this step.

5. To start your Rails server, run `rails server` (or `rails s`).

8. To see the web app, browse to <http://localhost:3000/security_devices>.

Note: 
If you decide to modify any code in the rails app, you will need to run `dev_comms:restart` (or `dev_comms:stop` then `dev_comms:start`) in order to see the updated functionality on the web app. 

## References
* [Ruby on Rails Apiotics Gem] (https://portal.apiotics.com/docs/4)
* more links

$(document).ready ->
	App.alert = App.cable.subscriptions.create('SecurityDeviceChannel',
		connected: ->
			# Called when the subscription is ready for use on the server
			return
		disconnected: ->
			# Called when the subscription has been terminated by the server
			return
		received: (data) ->
			# console.log data
			tr = $("#" + data["apiotics_instance"])
			td = tr.children("." + data["worker_name"] + "-" + data["model_name"] + "-" + data["interface"])
			td.text(data["value"])
			motion = tr.children(".security_device-motion_sensor-motion")
			sound = tr.children(".security_device-sound_sensor-data")
			vibration = tr.children(".security_device-vibration_sensor-threshold_exceeded")
			# console.log motion.text() == "true"
			# console.log sound.text()
			# console.log vibration.text()
			# console.log parseInt( sound.text(), 10 ) > 100
			console.log motion.text() == "true" or parseInt( sound.text(), 10 ) > 100 or vibration.text() == "true"
			if motion.text() == "true" or parseInt( sound.text(), 10 ) > 100 or vibration.text() == "true"
				tr.css("background-color", "#ff0000 !important")
			else
				tr.css("background-color", "#ffffff !important")
			# Called when there's incoming data on the websocket for this channel
			return
	)

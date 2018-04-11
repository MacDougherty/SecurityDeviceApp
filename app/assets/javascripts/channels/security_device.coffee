$(document).ready ->
	App.alert = App.cable.subscriptions.create('SecurityDeviceChannel',
		connected: ->
			# Called when the subscription is ready for use on the server
			return
		disconnected: ->
			# Called when the subscription has been terminated by the server
			return
		received: (data) ->
			console.log data
			tr = $("#" + data["apiotics_instance"])
			td = tr.children("." + data["worker_name"] + "-" + data["model_name"] + "-" + data["interface"])
			td.text(data["value"])
			# Called when there's incoming data on the websocket for this channel
			return
	)
class SecurityDeviceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "security_device_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

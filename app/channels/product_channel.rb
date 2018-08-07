class ProductChannel < ApplicationCable::Channel
  def subscribed
    # Now if users subscribe to the channel, they start “streaming” all the updates
    stream_from "product_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'chat'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def post_message(data)
    #TalkRegJob.perform_later()
    talk = Talk.new(message: data['message'])
    talk.save
    ActionCable.server.broadcast 'chat', message: data['message']
  end
end

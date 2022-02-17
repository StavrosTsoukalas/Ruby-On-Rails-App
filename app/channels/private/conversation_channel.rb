class Private::ConversationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "private_conversations_#{current_user.id}"
  end

  def unsubscribed
    stop_all_streams
  end
end

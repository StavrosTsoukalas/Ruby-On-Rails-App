import consumer from "../consumer"

consumer.private_conversation = consumer.subscriptions.create("Private::ConversationChannel", {
  connected() {
    console.log("test");
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  },

  send_message: function(message) {
    return this.perform('send_message', {
        message: message
    });
  }
});

$(document).on('submit', '.send-private-message', function(e) {
    e.preventDefault();
    var values = $(this).serializeArray();
    consumer.private_conversation.send_message(values);
    $(this).trigger('reset');
});

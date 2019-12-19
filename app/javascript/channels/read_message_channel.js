import consumer from "./consumer"

consumer.subscriptions.create("ReadMessageChannel", {
  connected() {
    console.log("Connected at ReadMessage")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  }
});

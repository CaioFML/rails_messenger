import consumer from "./consumer"

consumer.subscriptions.create("ReadMessageChannel", {
  connected() {
    console.log("Connected at ReadMessage")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data)
    data['messages'].forEach(message_id => {
      let container = document.querySelector(`div.message[data-message='${message_id}'] .read-icon`)
      container.classList.add(`has-text-success`)
    })
  }
});

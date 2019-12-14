import consumer from "./consumer"

consumer.subscriptions.create("MessageChannel", {
  connected() {
    console.log("Connected at MessageChannel")
  },

  received(data) {
    messageContainer = document.querySelector("div.message-container")
    messageContainer.innerHTML += data
    messageContainer.scrollIntoView(false)
  }
});

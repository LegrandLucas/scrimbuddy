function scrollLastMessageIntoView() {
  var messages = document.querySelectorAll('.card-chat');

  var lastMessage = messages[messages.length - 1];
  console.log(lastMessage)
  if (lastMessage !== undefined) {
    lastMessage.scrollIntoView();
  }
}

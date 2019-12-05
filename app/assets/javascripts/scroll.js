function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll('.card-chat');

  const lastMessage = messages[messages.length - 1];
  console.log(lastMessage)
  if (lastMessage !== undefined) {
    lastMessage.scrollIntoView();
  }
}

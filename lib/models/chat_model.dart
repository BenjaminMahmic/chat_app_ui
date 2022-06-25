enum MessageStatus {
  sending,
  sent,
  seen,
}

class ChatModel {
  final String userPhotoUrl;
  final String userName;
  final String lastMessage;
  final MessageStatus messageStatus;
  final DateTime lastMessageTime;

  ChatModel({
    required this.userPhotoUrl,
    required this.userName,
    required this.lastMessage,
    required this.messageStatus,
    required this.lastMessageTime,
  });
}

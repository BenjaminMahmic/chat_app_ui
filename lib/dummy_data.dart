import 'models/chat_model.dart';
import 'models/story_model.dart';

List<StoryModel> storiesList = [
  StoryModel(
    storyPhotoUrl: 'assets/pictures/story_1.jpg',
    userPhotoUrl: 'assets/pictures/selfie_1.jpg',
    userName: 'Linzi',
    userSurname: 'Coulson',
  ),
  StoryModel(
    storyPhotoUrl: 'assets/pictures/story_2.jpg',
    userPhotoUrl: 'assets/pictures/selfie_2.jpg',
    userName: 'Kiristin',
    userSurname: 'Riddle',
  ),
  StoryModel(
    storyPhotoUrl: 'assets/pictures/story_3.jpg',
    userPhotoUrl: 'assets/pictures/selfie_3.jpg',
    userName: 'Madelyn',
    userSurname: 'Sinclair',
  ),
  StoryModel(
    storyPhotoUrl: 'assets/pictures/story_4.jpg',
    userPhotoUrl: 'assets/pictures/selfie_4.jpg',
    userName: 'Eliz',
    userSurname: 'Samton',
  ),
  StoryModel(
    storyPhotoUrl: 'assets/pictures/story_5.jpg',
    userPhotoUrl: 'assets/pictures/selfie_5.jpg',
    userName: 'Teylor',
    userSurname: 'Aigt',
  ),
  StoryModel(
    storyPhotoUrl: 'assets/pictures/story_6.jpg',
    userPhotoUrl: 'assets/pictures/selfie_6.jpg',
    userName: 'Fred',
    userSurname: 'Pally',
  ),
];

List<ChatModel> chatList = [
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_1.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'How are you',
    messageStatus: MessageStatus.seen,
    lastMessageTime: DateTime.now(),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_2.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'Ok...',
    messageStatus: MessageStatus.sending,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 5),
    ),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_3.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'I am done',
    messageStatus: MessageStatus.sent,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 25),
    ),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_4.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'Are you finish it?',
    messageStatus: MessageStatus.seen,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 60),
    ),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_5.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'When is your birthday?',
    messageStatus: MessageStatus.seen,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 150),
    ),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_6.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'How are you.',
    messageStatus: MessageStatus.seen,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 300),
    ),
  ),
];

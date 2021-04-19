class ChatModel {
  final String name;
  final String msg;
  final String time;
  final String pic;

  ChatModel(this.name, this.msg, this.time, this.pic);
}

List<ChatModel> chatsData = [
  new ChatModel('Kalinga Jayakodi', 'Gust:Thanka ill pay accordingly ', '9.22',
      'https://randomuser.me/api/portraits/men/1.jpg'),
  new ChatModel('Minoli Perera', 'You sent an Attachment', '7.12 pm',
      'https://randomuser.me/api/portraits/men/2.jpg'),
  new ChatModel('kumar', 'welcomet', '09.30',
      'https://randomuser.me/api/portraits/men/7.jpg'),
  new ChatModel('meee', 'welcomep', '08.30',
      'https://randomuser.me/api/portraits/men/6.jpg'),
];

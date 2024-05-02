class UserModel {
  String accName;
  String accImage;
  Message? lastMessage;

  UserModel(
      {required this.accName,
      this.accImage = 'assets/noPhoto.png',
      this.lastMessage});
}

class Message {
  String text;
  String date;

  Message({required this.text, required this.date});
}

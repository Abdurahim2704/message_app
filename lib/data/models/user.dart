import 'message.dart';

class User {
  String id;
  List<Message> messages;

  User({required this.id, required this.messages});
  factory User.fromJson(Map<String, dynamic> json) {
    final id = json["id"] as String;
    final messages = (json["messages"] as List)
        .map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList();
    return User(id: id, messages: messages);
  }
}

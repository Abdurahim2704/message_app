import 'package:firebase_database/firebase_database.dart';
import 'package:message_app/data/models/folders.dart';
import 'package:message_app/data/models/message.dart';
import 'package:message_app/data/services/user_service.dart';

sealed class MessageService {
  static final fb = FirebaseDatabase.instance;

  static Future<bool> addMessage(String message, String toId) async {
    final ref = fb.ref(Folders.user.name).child(user.id);
    final newMessage = Message(
        fromUserId: user.id,
        toUserId: "user3",
        messageId: "9",
        type: MessageType.text,
        content: message,
        date: DateTime.now());
    user.messages.add(newMessage);
    ref.update({"messages": user.messages.map((e) => e.toJson()).toList()});
    ref.update({"messages": user.messages.map((e) => e.toJson()).toList()});
    return true;
  }
}
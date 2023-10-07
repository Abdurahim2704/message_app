import 'dart:io';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:message_app/data/models/folders.dart';
import 'package:message_app/data/models/message.dart';
import 'package:message_app/data/services/user_service.dart';

sealed class MessageService {
  static final fb = FirebaseDatabase.instance;

  static Future<bool> addMessage(String message, String toId, {File? file}) async {
    final ref = fb.ref(Folders.user.name).child(user.id);

    final newMessage = Message(
        fromUserId: user.id,
        imageUrl: await StoreService.uploadFile(file: file),
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

  //
  // static Future<List<User>> searchPost(String text,) async {
  //   try{
  //     final folder = db.ref();
  //     final event =  await folder.orderByChild("title").startAt(text).endAt("$text\uf8ff").once();
  //     final json = jsonDecode(jsonEncode(event.snapshot.value)) as Map;
  //     debugPrint("JSON: $json");
  //     final data = json.values.map((e) => Post.fromJson(e as Map<String, Object?>)).toList();
  //
  //    return  data.where((element) => element.userId == AuthService.user.uid).toList();
  //   } catch(e) {
  //     debugPrint("ERROR: $e");
  //     return [];
  //   }
  // }

}

sealed class StoreService {
  static final storage = FirebaseStorage.instance;

  static Future<String> uploadFile({File? file}) async {
    if(file != null){
      final image = storage.ref("messageImage").child(
          "image_${DateTime.now().toIso8601String()}${file.path.substring(file.path.lastIndexOf("."))}");
      final task = image.putFile(file);
      await task.whenComplete(() {});
      return image.getDownloadURL();
    }
    return "";
  }
}

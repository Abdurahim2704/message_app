import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import '../models/folders.dart';
import '../models/user.dart';

late final User user;
late final User user8;

sealed class UserService {
  static FirebaseDatabase fb = FirebaseDatabase.instance;

  static Future<List<User>> getUsers() async {
    final ref = await fb.ref("user").get();
    final users = (jsonDecode(jsonEncode(ref.value)) as Map)
        .values
        .map(
          (e) => User.fromJson(e as Map<String, dynamic>),
        )
        .toList();
    user8 = users.first;
    user = users.firstWhere((element) => element.id == "user8");
    return users;
  }

  static Future<User> getUserById(String id) async {
    final ref = fb.ref(Folders.user.name).child(id);
    final userJson = (jsonDecode(jsonEncode((await ref.get()).value)));
    final toUser = User.fromJson(userJson as Map<String, dynamic>);
    return toUser;
  }

}

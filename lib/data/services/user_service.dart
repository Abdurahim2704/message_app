import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import '../models/user.dart';

late final User user;

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
    user = users.first;
    return users;
  }
}

import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:message_app/data/models/folders.dart';

import '../models/user.dart';

sealed class UserService {
  static FirebaseDatabase fb = FirebaseDatabase.instance;
  static Future<List<User>> getUsers() async {
    final ref = await fb.ref(Folders.user.name).get();
    final users = (jsonDecode(jsonEncode(ref.value)) as Map)
        .values
        .map(
          (e) => User.fromJson(e as Map<String, dynamic>),
        )
        .toList();
    return users;
  }
}

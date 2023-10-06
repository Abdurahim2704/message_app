import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/presentation/pages/chatting_page.dart';
import 'core/constants/images.dart';
import 'data/models/notification.dart';

List<CustomNotification> notifications = [
  CustomNotification(
      title: "Super Offer",
      image: CustomImages.profileImage,
      subtitle: 'Get 60% off in our first booking',
      time: 'Sun,12:40pm'),
  CustomNotification(
      title: "Super Offer",
      image: CustomImages.profileImage2,
      subtitle: 'Get 60% off in our first booking',
      time: 'Sun,12:40pm'),
  CustomNotification(
      title: "Super Offer",
      image: CustomImages.profileImage3,
      subtitle: 'Get 60% off in our first booking',
      time: 'Sun,12:40pm'),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
          theme: ThemeData.light(useMaterial3: true),
          home: const ChattingPage()),
    );
  }
}

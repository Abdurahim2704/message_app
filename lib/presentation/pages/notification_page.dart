import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';
import '../../core/constants/styles.dart';
import '../../data/models/notification.dart';
import '../views/notification_tile.dart';

enum Tabs {
  recent,
  earlier,
  archieved,
}

class NotificationPage extends StatefulWidget {
  final List<CustomNotification> notifications;
  const NotificationPage({super.key, required this.notifications});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with TickerProviderStateMixin {
  late final TabController controller;
  Tabs tab = Tabs.recent;
  int currentIndex = 0;
  void Function() clearAllTab = () {};
  void Function() backTap = () {};
  late void Function(int) listTileTap;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    listTileTap = (index) {
      currentIndex = index;
      setState(() {});
    };
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        ///#AppBar
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            CustomStrings.notification,
            textAlign: TextAlign.center,
            style: CustomStyles.sfUiSemibold.copyWith(
              color: CustomColors.black,
              fontSize: 18.sp,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: TextButton(
                onPressed: clearAllTab,
                child: Text(
                  CustomStrings.clearAll,
                  style: CustomStyles.sfUiSemibold.copyWith(
                    color: CustomColors.orange,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            )
          ],
          leadingWidth: 80.sp,
          leading: GestureDetector(
            onTap: backTap,
            child: Center(
              child: Container(
                  height: 44.sp,
                  width: 44.sp,
                  padding: EdgeInsets.all(10.sp),
                  decoration: const BoxDecoration(
                    color: CustomColors.leadingGrey,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      CupertinoIcons.left_chevron,
                      color: CustomColors.black,
                    ),
                  )),
            ),
          ),
          bottom: TabBar(
            onTap: (value) {
              switch (value) {
                case 0:
                  tab = Tabs.recent;
                  break;
                case 1:
                  tab = Tabs.earlier;
                  break;
                case 2:
                  tab = Tabs.archieved;
                  break;
              }
              setState(() {});
            },
            indicatorColor: Colors.transparent,
            controller: controller,
            tabs: [
              Text(
                CustomStrings.recent,
                style: CustomStyles.sfUiSemibold.copyWith(
                  color: tab == Tabs.recent
                      ? CustomColors.orange
                      : CustomColors.black,
                  fontSize: 16.sp,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                CustomStrings.earlier,
                style: CustomStyles.sfUiSemibold.copyWith(
                  color: tab == Tabs.earlier
                      ? CustomColors.orange
                      : CustomColors.black,
                  fontSize: 16.sp,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                CustomStrings.archieved,
                style: CustomStyles.sfUiSemibold.copyWith(
                  color: tab == Tabs.archieved
                      ? CustomColors.orange
                      : CustomColors.black,
                  fontSize: 16.sp,
                  letterSpacing: 0.5,
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            ListView.builder(
              itemCount: widget.notifications.length,
              padding: EdgeInsets.only(top: 15.sp),
              itemBuilder: (context, index) {
                final notification = widget.notifications[index];
                return NotificationTile(
                  notification: notification,
                  isSelected: currentIndex == index,
                  onTap: () {
                    listTileTap(index);
                  },
                );
              },
            ),
            ListView.builder(
              itemCount: notifications.length,
              padding: EdgeInsets.symmetric(vertical: 10.sp),
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return NotificationTile(
                  notification: notification,
                  isSelected: currentIndex == index,
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                );
              },
            ),
            ListView.builder(
              itemCount: notifications.length,
              padding: EdgeInsets.symmetric(vertical: 10.sp),
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return NotificationTile(
                  notification: notification,
                  isSelected: currentIndex == index,
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

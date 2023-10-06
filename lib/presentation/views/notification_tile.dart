import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/styles.dart';
import '../../data/models/notification.dart';

class NotificationTile extends StatelessWidget {
  final CustomNotification notification;
  final bool isSelected;
  final void Function() onTap;
  const NotificationTile(
      {super.key,
      required this.notification,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      onTap: onTap,
      splashColor: Colors.transparent,
      contentPadding: EdgeInsets.symmetric(vertical: 10.sp),
      selectedTileColor: CustomColors.selectedTile,
      selected: isSelected,

      ///#leading
      leading: Padding(
        padding: EdgeInsets.only(left: 20.sp),
        child: SizedBox(
          height: 48.sp,
          width: 48.sp,
          child: Image.asset(notification.image),
        ),
      ),

      ///#title
      title: Text(
        notification.title,
        style: CustomStyles.sfUiMedium.copyWith(
          color: CustomColors.black,
          fontSize: 18.sp,
          letterSpacing: 0.5,
        ),
      ),

      ///#subtitle
      subtitle: Text(
        notification.subtitle,
        style: CustomStyles.sfUiRegular.copyWith(
          color: CustomColors.grey,
          fontSize: 13.sp,
          letterSpacing: 0.3,
        ),
      ),

      ///#trailing
      trailing: Padding(
        padding: EdgeInsets.only(right: 20.sp),
        child: Text(
          notification.time,
          textAlign: TextAlign.right,
          style: CustomStyles.sfUiRegular.copyWith(
            color: CustomColors.grey,
            fontSize: 11.sp,
            letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }
}

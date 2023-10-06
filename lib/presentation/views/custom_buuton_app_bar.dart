

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/colors.dart';


class KTButtonAppBar extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  const KTButtonAppBar({super.key,required this.onPressed,required this.icon});
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 44.h,
      width: 44.w,
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: KTColors.grey200,
      ),
      child: Align(
        alignment: Alignment.center,
        child: IconButton(
            splashRadius: 28.r,
            onPressed: onPressed,
            icon: icon,
        ),
      ),
    );
  }
}

class KTButtonAppBarPopupMenu extends StatelessWidget {
  final Widget icon;
  const KTButtonAppBarPopupMenu({super.key,required this.icon});
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 44.h,
      width: 44.w,
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: KTColors.grey200,
      ),
      child: icon,
    );
  }
}



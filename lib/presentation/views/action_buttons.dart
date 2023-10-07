
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/colors.dart';

class ActionButtons extends StatelessWidget {
  final void Function() function;
  final Color color;
  final Widget child;

  const ActionButtons({
    required this.function,
    this.color = CustomColors.$F7F7F9,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: function,
      icon: child,
      style: IconButton.styleFrom(
          backgroundColor: color, minimumSize: Size(44.sp, 44.sp)),
    );
  }
}
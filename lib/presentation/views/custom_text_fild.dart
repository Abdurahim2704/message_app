

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/colors.dart';
import 'package:message_app/core/constants/icons.dart';
import 'package:message_app/core/constants/strings.dart';

class KTextField extends StatelessWidget {
  const KTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        filled: true,
        fillColor: KTColors.grey200,
        hintText: KTStrings.searchText,
        helperStyle: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          color: KTColors.grey400,
          letterSpacing: 0.3.sp,
        ),
        prefixIcon: KTIcons.search,
      ),
    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/colors.dart';

sealed class KTIcons{
  static  Icon arrowBackIos = Icon(
    Icons.arrow_back_ios,
    size: 16.h,
    color: Colors.black,
  );
  static Icon search = const Icon(CupertinoIcons.search);
  static Icon send = const Icon(Icons.send_outlined);
  static Icon phone = const Icon(Icons.phone,color: CustomColors.orange,);
}
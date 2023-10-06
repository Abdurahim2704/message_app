

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

sealed class KTIcons{
  static  Icon arrowBackIos = Icon(
    Icons.arrow_back_ios,
    size: 16.h,
    color: Colors.black,
  );
  static Icon search = const Icon(CupertinoIcons.search);
}
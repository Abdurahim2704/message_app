import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/colors.dart';
import 'package:message_app/core/constants/images.dart';
import 'package:message_app/core/constants/styles.dart';

class MyMessage extends StatelessWidget {
  final String message;
  final DateTime time;
  final bool isSeen;

  const MyMessage({
    this.isSeen = false,
    required this.time,
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const Spacer(),
          SizedBox(
            width: message.split("\n").any((element) => element.length >= 25)
                ? 240.sp
                : null,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.sp),
                    topRight: Radius.circular(10.sp),
                    bottomLeft: Radius.circular(10.sp),
                  ),
                  color: CustomColors.$E5F4FF),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 12.sp, vertical: 8.sp),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.end,
                  alignment: WrapAlignment.end,
                  children: [
                    Text(
                      message,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: CustomStyles.sfFont,
                        color: CustomColors.$1B1E28,
                      ),
                    ),
                    SizedBox(width: 7.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "${time.hour.toString().padLeft(2, "0")}:${time.minute.toString().padLeft(2, "0")}",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: CustomStyles.sfFont,
                            color: CustomColors.$7D848D,
                          ),
                        ),
                        SizedBox(width: 5.sp),
                        Image(
                          image: CustomImages.icDone,
                          color: isSeen ? CustomColors.$19B000 : null,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

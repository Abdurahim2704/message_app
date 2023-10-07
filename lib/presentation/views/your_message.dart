
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/colors.dart';
import 'package:message_app/core/constants/styles.dart';

class YourMessage extends StatelessWidget {
  final String message;
  final DateTime time;
  final bool isSeen;
  final String imageUrl;
  const YourMessage({
    this.isSeen = false,
    required this.time,
    required this.message,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(
            width: message.length >= 29 ? 240.sp : null,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.sp),
                    topRight: Radius.circular(10.sp),
                    bottomRight: Radius.circular(10.sp),
                  ),
                  color: CustomColors.$F7F7F9),
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 12.sp, vertical: 8.sp),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
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
                    Text(
                      "${time.hour.toString().padLeft(2, "0")}:${time.minute.toString().padLeft(2, "0")}",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: CustomStyles.sfFont,
                        color: CustomColors.$7D848D,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
         imageUrl.isNotEmpty? Image.network(imageUrl): const SizedBox.shrink(),
          const Spacer(),
        ],
      ),
    );
  }
}
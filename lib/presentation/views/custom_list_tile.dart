import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/colors.dart';
import 'package:message_app/core/constants/images.dart';

import '../../core/constants/strings.dart';
import '../pages/chatting_page.dart';


class KTListTile extends StatelessWidget {
  final AssetImage img;
  final int i;
  final String title;

  const KTListTile(
      {super.key, required this.img, required this.i, required this.title,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:  (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ChattingPage()));
      },
      leading: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image(
            image: img,
          ),
          Container(
            height: 15.h,
            width: 15.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                color: i != 1 ? KTColors.yellow :
                KTColors.grey500,
            ),
          )
        ],
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: KTColors.messageColor,
        ),
      ),
      subtitle: Text(
        i != 1 ? KTStrings.msg : KTStrings.typing,
        style: TextStyle(
          fontSize: 14.sp,
          color: i != 1 ? KTColors.grey400 : KTColors.orange,
        ),
      ),
      trailing: Image(
        image: i != 1 ? KTImages.checkOne : KTImages.checkTwo,
        height: 16,
        width: 16,
      ),
    );
  }
}

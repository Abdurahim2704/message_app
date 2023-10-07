import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/icons.dart';
import 'package:message_app/data/models/message.dart';
import 'package:message_app/data/services/message_service.dart';
import 'package:message_app/data/services/user_service.dart';
import 'package:message_app/presentation/views/your_message.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../../core/constants/strings.dart';
import '../../core/constants/styles.dart';
import '../views/action_buttons.dart';
import '../views/my_message.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  final TextEditingController controller = TextEditingController();
  final ScrollController scrollController = ScrollController();
  List<Message> messages = [];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      extendBody: true,
      backgroundColor: CustomColors.$FFFFFF,
      appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Colors.transparent,
          flexibleSpace: SizedBox(height: 48.sp),
          toolbarHeight: 75.sp,
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.only(top: 15.sp),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ActionButtons(
                      function: () {},
                      child: const Image(
                        image: CustomImages.icBack,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          CustomStrings.ahmed,
                          style: TextStyle(
                            fontFamily: CustomStyles.sfFont,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: CustomColors.$1B1E28,
                          ),
                        ),
                        Text(
                          CustomStrings.active,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: CustomStyles.sfFont,
                            color: CustomColors.$19B000,
                          ),
                        )
                      ],
                    ),
                    ActionButtons(
                      function: () {},
                      child: const Image(
                        image: CustomImages.icPhone,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 14.sp),
            child: const Divider(
              color: CustomColors.$F7F7F9,
              thickness: 2,
            ),
          )),
      body: Padding(
        padding: EdgeInsets.only(left: 20.sp, right: 18.sp, bottom: 20.sp),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 70.sp),
                  for (int i = 0; i < messages.length; i++)
                    messages[i].fromUserId == user.id
                        ? MyMessage(
                            time: messages[i].date,
                            message: messages[i].content)
                        : YourMessage(
                            time: messages[i].date,
                            message: messages[i].content),
                  const SizedBox(height: 80)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.sp),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 32.sp,
                      width: 59.sp,
                      child: const DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: CustomColors.$F7F7F9),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            CustomStrings.today,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: CustomStyles.sfFont,
                              color: CustomColors.$7D848D,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 273.sp,
                          child: TextField(
                            controller: controller,
                            style: const TextStyle(
                                fontFamily: CustomStyles.sfFont, fontSize: 16),
                            maxLines: null,
                            decoration: InputDecoration(
                              hintText: CustomStrings.type,
                              hintStyle: const TextStyle(
                                fontSize: 16,
                                color: CustomColors.$7D848D,
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              filled: true,
                              fillColor: CustomColors.$F7F7F9,
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Image(
                                  image: CustomImages.icFiles,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        CircleAvatar(
                          backgroundColor: CustomColors.$FF6421,
                          radius: 24,
                          child: IconButton(
                            onPressed: () {
                              MessageService.addMessage(controller.text, user.id);
                              messages = [...user.messages, ...user8.messages];

                              messages.sort((a, b) => a.date.compareTo(b.date));
                              controller.text = '';
                              setState(() {});
                            },
                            splashRadius: 50,
                            icon: KTIcons.send,
                            color: CustomColors.$F7F7F9,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

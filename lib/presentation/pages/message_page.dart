
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/icons.dart';
import 'package:message_app/presentation/pages/chatting_page.dart';
import 'package:message_app/presentation/views/custom_list_tile.dart';
import 'package:message_app/presentation/views/custom_text_fild.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../../core/constants/strings.dart';
import '../views/custom_buuton_app_bar.dart';
import '../views/custom_text_view.dart';


class MessagePage extends StatefulWidget {
  const MessagePage({super.key});


  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  TextEditingController controller = TextEditingController();

  IsOnlineCheck checkUserOnline = IsOnlineCheck.online;
  String select = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              /// #appBar part
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// #arrow button
                  KTButtonAppBar(
                    onPressed: () {},
                    icon: KTIcons.arrowBackIos,
                  ),

                  /// #message text
                  const KTextMessageWidget(),

                  /// #PopupMenuButton button
                  KTButtonAppBarPopupMenu(
                    icon:  PopupMenuButton(
                      splashRadius: 28.r,
                      itemBuilder: (context) {
                        return [
                          for (var item in KTStrings.items)
                            PopupMenuItem(
                              child: Text(item),
                              onTap: () {
                                select = item;
                                setState(() {});
                              },
                            ),
                        ];
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              /// #edit
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// #message text
                  const KTextMessageWidget(),

                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: KTImages.editIcon,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),

              /// #textFild
             // const KTextField(),

              /// #test
            TextField(
              controller: controller,
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
          ),

              SizedBox(
                height: 15.h,
              ),

              /// #users
              Expanded(
                child: ListView.builder(
                  itemCount: KTStrings.username.length,
                  itemBuilder: (context, i) {
                    final img = KTImages.userImage[i];
                    final title = KTStrings.username[i];
                    return KTListTile(
                        img: img, i: i, title: title,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum IsOnlineCheck {
  online,
  offline,
}

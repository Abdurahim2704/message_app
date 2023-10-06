
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:message_app/core/constants/icons.dart';
import 'package:message_app/presentation/views/custom_list_tile.dart';
import 'package:message_app/presentation/views/custom_text_fild.dart';
import '../../core/constants/images.dart';
import '../../core/constants/strings.dart';
import '../views/custom_buuton_app_bar.dart';
import '../views/custom_text_view.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

                  IconButton.filled(
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
              const KTextField(),
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
                    return KTListTile(img: img, i: i, title: title);
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

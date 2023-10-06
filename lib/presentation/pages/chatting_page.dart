import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../../core/constants/strings.dart';
import '../../core/constants/styles.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({super.key});

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(

      appBar: AppBar(
        flexibleSpace: SizedBox(
          height: 48.sp,
        ),
        toolbarHeight: 75.sp,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 15.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButtons(
                function: () {},
                child: const Image(
                  image: CustomImages.icBack,
                ),
              ),
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    CustomStrings.ahmed,
                    style: TextStyle(
                      fontFamily: CustomStyles.sfFont,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.$1B1E28,
                    ),
                  ),
                  Text(
                    CustomStrings.active,
                    style: TextStyle(
                      fontSize: 14,
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
        ),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 14.sp),
          child: const Divider(
            thickness: 1.5,
            color: CustomColors.$F7F7F9,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            const SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  ///isME = true
                  Row(
                    children: [
                      Spacer(),
                      SizedBox(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: CustomColors.$E5F4FF),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.end,
                              children: [
                                Text(
                                  CustomStrings.hello,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$1B1E28,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "9:30",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$7D848D,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image(
                                  image: CustomImages.icDone,
                                  color: CustomColors.$19B000,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      SizedBox(
                        width: 246,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: CustomColors.$E5F4FF),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.end,
                              children: [
                                Text(
                                  CustomStrings.thank,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$1B1E28,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "9:30",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$7D848D,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image(
                                  image: CustomImages.icDone,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  ///isMe = false
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 48,
                        width: 48,
                        child: Image(image: CustomImages.imgMan),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: CustomColors.$F7F7F9),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.end,
                              children: [
                                Text(
                                  CustomStrings.hello,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$1B1E28,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "9:30",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$7D848D,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image(
                                  image: CustomImages.icDone,
                                  color: CustomColors.$19B000,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 48,
                        width: 48,
                        child: Image(image: CustomImages.imgMan),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: CustomColors.$F7F7F9),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.end,
                              children: [
                                Text(
                                  CustomStrings.veryGlab,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$1B1E28,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "9:30",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$7D848D,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image(
                                  image: CustomImages.icDone,
                                  color: CustomColors.$19B000,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 48,
                        width: 48,
                        child: Image(image: CustomImages.imgWoman),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 264,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: CustomColors.$F7F7F9),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.end,
                              children: [
                                Text(
                                  CustomStrings.arriving,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$1B1E28,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "9:30",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: CustomStyles.sfFont,
                                    color: CustomColors.$7D848D,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image(
                                  image: CustomImages.icDone,
                                  color: CustomColors.$19B000,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
            Align(
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
                                  ))),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        backgroundColor: CustomColors.$FF6421,
                        radius: 24,
                        child: IconButton(
                            onPressed: () {},
                            splashRadius: 50,
                            icon: const Image(
                              image: CustomImages.icRecord,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

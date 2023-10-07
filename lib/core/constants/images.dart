import 'package:flutter/cupertino.dart';

sealed class CustomImages {
  static const profileImage = "assets/images/image_person.png";
  static const profileImage2 = "assets/images/image_person2.png";
  static const profileImage3 = "assets/images/image_person3.png";

  ///# Qurbonpulat

  ///icons
  static const AssetImage icBack = AssetImage("assets/icons/ic_back.png");
  static const AssetImage icDone = AssetImage("assets/icons/ic_done.png");
  static const AssetImage icFiles = AssetImage("assets/icons/ic_files.png");
  static const AssetImage icPhone = AssetImage("assets/icons/ic_phone.png");
  static const AssetImage icRecord = AssetImage("assets/icons/ic_record.png");

  ///images
  static const AssetImage imgMan = AssetImage("assets/images/img_man.png");
  static const AssetImage imgWoman = AssetImage("assets/images/img_woman.png");

}

sealed class KTImages{
  static const amedAnjims = AssetImage("assets/users/amed_anjims.png");
  static const jenifer = AssetImage("assets/users/jenfer.png");
  static List<AssetImage> userImage = const [amedAnjims,jenifer,];

  ///#icons
  static const AssetImage editIcon = AssetImage("assets/icons/edit.png",);
  static const AssetImage checkOne = AssetImage("assets/icons/check_one.png",);
  static const AssetImage checkTwo = AssetImage("assets/icons/check.png",);



}
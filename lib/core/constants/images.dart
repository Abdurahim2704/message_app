import 'package:flutter/cupertino.dart';

sealed class CustomImages {
  static const profileImage = "assets/images/image_person.png";
  static const profileImage2 = "assets/images/image_person2.png";
  static const profileImage3 = "assets/images/image_person3.png";
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
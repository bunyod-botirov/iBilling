import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class AppBarW {
  static AppBar appBar(String title) {
    return AppBar(
      leading: Image.asset(ImageConst.instance.profile),
      title: Text(
        title,
        style: FontStyleConst.instance.appBar,
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(ImageConst.instance.settingsIcon),
          splashRadius: SizeConst.instance.rExtraLarge,
          onPressed: () {},
        ),
        SvgPicture.asset(ImageConst.instance.vLine),
        IconButton(
          icon: SvgPicture.asset(ImageConst.instance.searchIcon),
          splashRadius: SizeConst.instance.rExtraLarge,
          onPressed: () {},
        ),
      ],
    );
  }

  static AppBar simpleAppBar(String title) {
    return AppBar(
      leading: Image.asset(ImageConst.instance.profile),
      title: Text(
        title,
        style: FontStyleConst.instance.appBar,
      ),
    );
  }
}

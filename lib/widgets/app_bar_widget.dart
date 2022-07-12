import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class AppBarW {
  static AppBar appBar(String title) {
    return AppBar(
      leading: Image.asset("assets/images/temp.png"),
      title: Text(
        title,
        style: FontStyleConst.instance.mediumStyle(18),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/settings_icon.svg"),
          splashRadius: 20,
          onPressed: () {},
        ),
        SvgPicture.asset("assets/icons/v_line.svg"),
        IconButton(
          icon: SvgPicture.asset("assets/icons/search_icon.svg"),
          splashRadius: 20,
          onPressed: () {},
        ),
      ],
    );
  }
}

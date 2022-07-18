import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class InfoTextW extends StatelessWidget {
  final String title, content;
  const InfoTextW({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          title,
          style: FontStyleConst.instance.title1,
        ),
        SizedBox(width: SizeConst.instance.wMaxSmall2),
        Text(
          content,
          style: FontStyleConst.instance.body1,
        ),
      ],
    );
  }
}

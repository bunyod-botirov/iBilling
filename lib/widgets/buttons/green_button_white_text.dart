import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class GreenButtonWithWhiteTextW extends StatelessWidget {
  final String text;
  final double width, height;
  final VoidCallback voidCallback;
  const GreenButtonWithWhiteTextW({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.voidCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: voidCallback,
        style: ElevatedButton.styleFrom(
          primary: ColorConst.instance.kDarkGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConst.instance.rMaxSmall1),
          ),
        ),
        child: Text(
          text,
          style: FontStyleConst.instance.headline1,
        ),
      ),
    );
  }
}

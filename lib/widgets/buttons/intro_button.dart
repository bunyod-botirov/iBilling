import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class IntroButton extends StatelessWidget {
  final String text;
  final VoidCallback? voidCallback;

  const IntroButton({
    Key? key,
    required this.text,
    this.voidCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(327.w, 48.h),
        elevation: 0,
        primary: ColorConst.instance.kIntro,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConst.instance.rMaxSmall1),
        ),
      ),
      onPressed: voidCallback,
      child: Text(text, style: FontStyleConst.instance.introButton),
    );
  }
}

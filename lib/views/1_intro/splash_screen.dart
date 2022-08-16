import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/navigation/navigation_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/constants/texts/text_const.dart';
import 'package:ibilling/router/router/router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: 2.Chack Token
    Future.delayed(
      const Duration(seconds: 3),
      () => NavigationService.instance.pushNamedRemoveUntil(
        routeName: NavigationConst.INTRO_VIEW,
      ),
    );
    return Scaffold(
      backgroundColor: ColorConst.instance.kWhite,
      body: Center(
        child: Text(
          TextConst.INTRO_TEXT,
          style: FontStyleConst.instance.intro,
        ),
      ),
    );
  }
}

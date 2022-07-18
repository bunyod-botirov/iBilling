import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/container_decoration.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/extensions/bloc_extension.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: AlertDialog(
        backgroundColor: ColorConst.instance.kDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConst.instance.rMaxSmall2),
        ),
        title: Text(
          "What do you want to create?",
          style: FontStyleConst.instance.headline2,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
              child: Container(
                width: 287.w,
                height: 46.h,
                decoration: DecorationContainer.instance.decoration3,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: SizeConst.instance.wExtraLarge),
                    SvgPicture.asset(
                      ImageConst.instance.paperIcon,
                      width: 26.w,
                      height: 26.h,
                    ),
                    SizedBox(width: SizeConst.instance.wSmall),
                    Text(
                      "Contract",
                      style: FontStyleConst.instance.buttonText1,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                context.bottomNavBarCT.changePage(6, context);
              },
            ),
            SizedBox(height: SizeConst.instance.hSmall),
            InkWell(
              child: Container(
                width: 287.w,
                height: 46.h,
                decoration: DecorationContainer.instance.decoration3,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: SizeConst.instance.wExtraLarge),
                    SvgPicture.asset(
                      ImageConst.instance.invoiceIcon,
                      width: 26.w,
                      height: 26.h,
                    ),
                    SizedBox(width: SizeConst.instance.wSmall),
                    Text(
                      "Invoice",
                      style: FontStyleConst.instance.buttonText1,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                context.bottomNavBarCT.changePage(7, context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

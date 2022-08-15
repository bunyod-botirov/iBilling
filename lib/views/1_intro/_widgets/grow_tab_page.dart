import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class GrowTabPage extends StatelessWidget {
  const GrowTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 224.h,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 327.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                      color: ColorConst.instance.kIntroGrey,
                      borderRadius:
                          BorderRadius.circular(SizeConst.instance.rSmall),
                    ),
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    ImageConst.instance.introGrow,
                    width: 327.w,
                    height: 206.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 28.h),
          Text(
            "Grow on IBilling",
            style: FontStyleConst.instance.introTitle,
          ),
          SizedBox(height: SizeConst.instance.hMaxSmall2),
          Text(
            "IBilling tool lets you store customer and prospect contact information, identify sales opportunities.",
            textAlign: TextAlign.center,
            style: FontStyleConst.instance.introBody,
          ),
        ],
      ),
    );
  }
}

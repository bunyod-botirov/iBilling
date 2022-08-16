import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class TabPage extends StatelessWidget {
  final String imageName, title, subTitle;

  const TabPage({
    Key? key,
    required this.imageName,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

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
                    imageName,
                    width: 327.w,
                    height: 206.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 28.h),
          Text(
            title,
            style: FontStyleConst.instance.introTitle,
          ),
          SizedBox(height: SizeConst.instance.hMaxSmall2),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: FontStyleConst.instance.introBody,
          ),
        ],
      ),
    );
  }
}

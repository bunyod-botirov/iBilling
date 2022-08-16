import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';

class LanguageIcon extends StatelessWidget {
  final VoidCallback? onPressed;
  final String iconName;

  const LanguageIcon({
    Key? key,
    required this.iconName,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.w,
      padding: EdgeInsets.only(top: SizeConst.instance.hMaxSmall2),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(2.w, 4.h),
            blurRadius: 25.r,
            spreadRadius: 0,
            color: ColorConst.instance.kBlack.withOpacity(0.1),
          ),
        ],
      ),
      child: InkWell(
        onTap: onPressed,
        child: SvgPicture.asset(
          iconName,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

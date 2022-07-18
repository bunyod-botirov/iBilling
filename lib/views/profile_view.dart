import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/container_decoration.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/sizes/padding_margin_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/widgets/app_bar_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW.simpleAppBar("Profile"),
      body: Padding(
        padding: PaddingMarginConst.instance.allMedium,
        child: Column(
          children: <Widget>[
            Container(
              width: 343.w,
              height: 188.11.h,
              padding: EdgeInsets.symmetric(
                horizontal: SizeConst.instance.wExtraLarge,
                vertical: SizeConst.instance.hMedium,
              ),
              decoration: DecorationContainer.instance.decoration1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(ImageConst.instance.accountCircle),
                      SizedBox(width: SizeConst.instance.wMedium),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Bunyod Botirov",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: ColorConst.instance.kLightGreen,
                              fontSize: SizeConst.instance.fMedium,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Flutter Developer",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: ColorConst.instance.kWhite,
                              fontSize: SizeConst.instance.fSmall,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Date of birth:",
                        style: FontStyleConst.instance.title2,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        "24.06.2004",
                        style: FontStyleConst.instance.body1,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Phone number:",
                        style: FontStyleConst.instance.title2,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        "+998994221155",
                        style: FontStyleConst.instance.body1,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "E-mail:",
                        style: FontStyleConst.instance.title2,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        "b24bunyod@gmail.com",
                        style: FontStyleConst.instance.body1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConst.instance.hSmall),
            Container(
              width: 343.w,
              height: 44.h,
              padding: EdgeInsets.symmetric(
                horizontal: SizeConst.instance.wExtraLarge,
              ),
              decoration: DecorationContainer.instance.decoration1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "English (USA)",
                    style: FontStyleConst.instance.title2,
                  ),
                  Image.asset(ImageConst.instance.profile),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

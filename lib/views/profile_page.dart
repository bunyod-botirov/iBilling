import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/text_style_comp.dart';
import 'package:ibilling/core/constants/colors/colors_constant.dart';
import 'package:ibilling/core/constants/padding_margin_const.dart';
import 'package:ibilling/core/constants/size_constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/temp.png"),
        title: Text(
          "Profile",
          style: TextStyleComp.mediumStyle(18),
        ),
      ),
      body: Padding(
        padding: PaddingMarginConst.allPM,
        child: Column(
          children: <Widget>[
            Container(
              width: SizeConst.getWidth(343),
              height: SizeConst.getHeight(188.11),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConst.getWidth(20),
                vertical: SizeConst.getHeight(16),
              ),
              decoration: BoxDecoration(
                color: ColorsConst.dark,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/icons/account_circle.svg"),
                      SizeConst.horizontalBox(16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Bunyod Botirov",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: ColorsConst.lightGreen,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Flutter Developer",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: ColorsConst.white,
                              fontSize: 12,
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
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "24.06.2004",
                        style: TextStyleComp.mediumStyleGrey(14),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Phone number:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "+998994221155",
                        style: TextStyleComp.mediumStyleGrey(14),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "E-mail:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "b24bunyod@gmail.com",
                        style: TextStyleComp.mediumStyleGrey(14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizeConst.verticalBox(12),
            Container(
              width: SizeConst.getWidth(343),
              height: SizeConst.getHeight(44),
              padding: EdgeInsets.symmetric(horizontal: SizeConst.getWidth(20)),
              decoration: BoxDecoration(
                color: ColorsConst.dark,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "English (USA)",
                    style: TextStyleComp.mediumStyle(14),
                  ),
                  Image.asset("assets/images/temp.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

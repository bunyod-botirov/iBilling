import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/text_style_comp.dart';
import 'package:ibilling/core/constants/colors_constant.dart';
import 'package:ibilling/core/constants/padding_margin_const.dart';
import 'package:ibilling/core/constants/size_constant.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          "assets/icons/paper_icon_bigger.svg",
          fit: BoxFit.none,
        ),
        title: Text(
          "№ 153",
          style: TextStyleComp.boldStyle(18),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/bookmark_icon.svg"),
            splashRadius: 20,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: PaddingMarginConst.allPM,
        child: Column(
          children: <Widget>[
            Container(
              width: SizeConst.getWidth(343),
              height: SizeConst.getHeight(310),
              padding: EdgeInsets.symmetric(
                horizontal: SizeConst.getWidth(20),
                vertical: SizeConst.getHeight(14),
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
                      Text(
                        "Fisher's full name:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "Yoldosheva Ziyoda",
                        style: TextStyleComp.regularStyleGrey(14),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Status of the contract:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "Paid",
                        style: TextStyleComp.regularStyleGrey(14),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Amount:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "1,200,000 UZS",
                        style: TextStyleComp.regularStyleGrey(14),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Last invoice:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "№ 156",
                        style: TextStyleComp.regularStyleGrey(14),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Number of invoices:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "6",
                        style: TextStyleComp.regularStyleGrey(14),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Address of the organization:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "Проспект Мирзо-Улугбек, дом 58, Мирзо-Улугбекский район, Ташкент",
                        style: TextStyleComp.regularStyleGrey(14),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "ITN/IEC of the organization:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "5647520318",
                        style: TextStyleComp.regularStyleGrey(14),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Created at:",
                        style: TextStyleComp.mediumStyle(14),
                      ),
                      SizeConst.horizontalBox(8),
                      Text(
                        "14:38, 2 February, 2021",
                        style: TextStyleComp.regularStyleGrey(14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

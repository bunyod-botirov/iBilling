import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/text_style_comp.dart';
import 'package:ibilling/core/constants/colors_constant.dart';
import 'package:ibilling/core/constants/padding_margin_const.dart';
import 'package:ibilling/core/constants/size_constant.dart';
import 'package:ibilling/widgets/app_bar_widget.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW.appBar("Saved"),
      body: ListView.separated(
        itemCount: 5,
        padding: PaddingMarginConst.allPM,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) {
          return SizeConst.verticalBox(12);
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: SizeConst.getHeight(148),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: ColorsConst.dark,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/paper_icon.svg"),
                    SizeConst.horizontalBox(6),
                    Text(
                      "№ 154",
                      style: TextStyleComp.boldStyle(14),
                    ),
                    const Spacer(),
                    Container(
                      width: SizeConst.getWidth(49),
                      height: SizeConst.getHeight(21),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF49B7A5).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "Paid",
                        style: TextStyle(
                          color: Color(0xFF49B7A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Fish:",
                      style: TextStyleComp.mediumStyle(14),
                    ),
                    SizeConst.horizontalBox(8),
                    Text(
                      "Bunyod Botirov",
                      style: TextStyleComp.regularStyleGrey(14),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Amount",
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
                    const Spacer(),
                    Text(
                      "31.01.2021",
                      style: TextStyleComp.boldStyleGrey(14),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

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
import 'package:ibilling/widgets/contracts_widget.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW.appBar("History"),
      body: Padding(
        padding: PaddingMarginConst.instance.hsMedium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: SizeConst.instance.hMedium),
            Text(
              "Date",
              style: FontStyleConst.instance.headline4,
            ),
            SizedBox(height: SizeConst.instance.hMedium),
            Row(
              children: <Widget>[
                Container(
                  width: 116.w,
                  height: 37.h,
                  padding: PaddingMarginConst.instance.hsSmall,
                  decoration: DecorationContainer.instance.decoration1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "16.02.2021",
                        style: FontStyleConst.instance.headline5,
                      ),
                      SvgPicture.asset(ImageConst.instance.calendarIcon),
                    ],
                  ),
                ),
                SizedBox(width: SizeConst.instance.wSmall),
                Icon(
                  Icons.remove,
                  size: SizeConst.instance.rLarge,
                  color: ColorConst.instance.kDarkGrey,
                ),
                SizedBox(width: SizeConst.instance.wSmall),
                Container(
                  width: 116.w,
                  height: 37.h,
                  padding: PaddingMarginConst.instance.hsSmall,
                  decoration: DecorationContainer.instance.decoration1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "To",
                        style: FontStyleConst.instance.headline5,
                      ),
                      SvgPicture.asset(ImageConst.instance.calendarIcon),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                padding: PaddingMarginConst.instance.vsSmall,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: SizeConst.instance.hSmall);
                },
                itemBuilder: (BuildContext context, int index) {
                  return const ContractsW(
                    contractNumber: 1,
                    name: "BBB",
                    amount: 124,
                    lastInvoice: 23,
                    invoiceNumber: 53,
                    date: "12.03.11",
                    status: 0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

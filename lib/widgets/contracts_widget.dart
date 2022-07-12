import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/container_decoration.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/sizes/padding_margin_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class ContractsW extends StatelessWidget {
  final int lastInvoice, invoiceNumber, contractNumber, status;
  final String name, date;
  final double amount;

  const ContractsW({
    Key? key,
    required this.contractNumber,
    required this.name,
    required this.amount,
    required this.lastInvoice,
    required this.invoiceNumber,
    required this.date,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 148.h,
        padding: PaddingMarginConst.instance.allSmall,
        decoration: DecorationContainer.instance.container,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                SvgPicture.asset(ImageConst.instance.paperIcon),
                SizedBox(width: 6.w),
                Text(
                  "№ $contractNumber",
                  style: FontStyleConst.instance.headline1,
                ),
                const Spacer(),
                statusIdentifier(status),
              ],
            ),
            Row(
              children: <Widget>[
                Text("Fish:  ", style: FontStyleConst.instance.headline2),
                Text(name, style: FontStyleConst.instance.headline3),
              ],
            ),
            Row(
              children: <Widget>[
                Text("Amount:  ", style: FontStyleConst.instance.headline2),
                Text("$amount UZS", style: FontStyleConst.instance.headline3),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Last invoice:  ",
                  style: FontStyleConst.instance.headline2,
                ),
                Text(
                  "№ $lastInvoice",
                  style: FontStyleConst.instance.headline3,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Number of invoices:  ",
                  style: FontStyleConst.instance.headline2,
                ),
                Text(
                  invoiceNumber.toString(),
                  style: FontStyleConst.instance.headline3,
                ),
                const Spacer(),
                Text(
                  date,
                  style: FontStyleConst.instance.headline4,
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }

  Widget statusIdentifier(int status) {
    if (status == 0) {
      return Container(
        width: 49.w,
        height: 21.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorConst.instance.kStatusGreen.withOpacity(0.15),
          borderRadius: BorderRadius.circular(SizeConst.instance.rStatus),
        ),
        child: Text(
          "Paid",
          style: FontStyleConst.instance.statusGreen,
        ),
      );
    } else if (status == 1) {
      return Container(
        width: 90.w,
        height: 24.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorConst.instance.kStatusYellow.withOpacity(0.15),
          borderRadius: BorderRadius.circular(SizeConst.instance.rStatus),
        ),
        child: Text(
          "In process",
          style: FontStyleConst.instance.statusYellow,
        ),
      );
    } else if (status == 2) {
      return Container(
        width: 147.w,
        height: 24.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorConst.instance.kRed.withOpacity(0.15),
          borderRadius: BorderRadius.circular(SizeConst.instance.rStatus),
        ),
        child: Text(
          "Rejected by Payme",
          style: FontStyleConst.instance.statusRed1,
        ),
      );
    } else if (status == 3) {
      return Container(
        width: 119.w,
        height: 24.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorConst.instance.kStatusRed.withOpacity(0.15),
          borderRadius: BorderRadius.circular(SizeConst.instance.rStatus),
        ),
        child: Text(
          "Rejected by IQ",
          style: FontStyleConst.instance.statusRed2,
        ),
      );
    } else {
      return Container(
        width: 49.w,
        height: 21.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorConst.instance.kLightGrey.withOpacity(0.15),
          borderRadius: BorderRadius.circular(SizeConst.instance.rStatus),
        ),
        child: Text(
          "Null",
          style: FontStyleConst.instance.headline3,
        ),
      );
    }
  }
}

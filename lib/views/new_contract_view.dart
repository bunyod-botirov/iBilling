import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/sizes/padding_margin_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/widgets/app_bar_widget.dart';

class NewContractView extends StatelessWidget {
  const NewContractView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW.simpleAppBar("New contract"),
      body: Padding(
        padding: PaddingMarginConst.instance.allMedium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Лицо",
              style: FontStyleConst.instance.newContracts,
            ),
            SizedBox(height: SizeConst.instance.hMaxSmall1),
            Container(
              height: 46.h,
              padding: PaddingMarginConst.instance.hsMedium,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                border: Border.all(
                  width: 1.2.w,
                  color: ColorConst.instance.kWhite.withOpacity(0.4),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Физическое",
                    style: FontStyleConst.instance.newContracts,
                  ),
                  Icon(
                    Icons.arrow_drop_down_circle_sharp,
                    color: ColorConst.instance.kWhite.withOpacity(0.4),
                    size: SizeConst.instance.rExtraLarge,
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConst.instance.hMedium),
            Text(
              "Fisher’s full name",
              style: FontStyleConst.instance.newContracts,
            ),
            SizedBox(height: SizeConst.instance.hMaxSmall1),
            SizedBox(
              height: 46.h,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: ColorConst.instance.kWhite.withOpacity(0.4),
                      width: 1.2,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.r),
                    borderSide: BorderSide(
                      color: ColorConst.instance.kWhite.withOpacity(0.4),
                      width: 1.2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

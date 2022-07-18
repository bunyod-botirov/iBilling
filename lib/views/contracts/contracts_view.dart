import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/sizes/padding_margin_const.dart';
import 'package:ibilling/core/extensions/bloc_extension.dart';
import 'package:ibilling/views/contracts/_widgets/contracts_calendar.dart';
import 'package:ibilling/widgets/contracts_widget.dart';

class ContractsView extends StatelessWidget {
  const ContractsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.instance.kBlack,
        leading: Image.asset(ImageConst.instance.profile),
        title: Text("Contracts", style: FontStyleConst.instance.appBar),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(ImageConst.instance.settingsIcon),
            splashRadius: SizeConst.instance.rExtraLarge,
            onPressed: () {},
          ),
          SvgPicture.asset(ImageConst.instance.vLine),
          IconButton(
            icon: SvgPicture.asset(ImageConst.instance.searchIcon),
            splashRadius: SizeConst.instance.rExtraLarge,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const ContractsCalendar(),
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: SizeConst.instance.wMedium,
                      top: SizeConst.instance.hMedium,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(92.w, 33.h),
                            padding: const EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                          ),
                          child: Text(
                            "Contracts",
                            style: FontStyleConst.instance.buttonText1,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: SizeConst.instance.wMedium),
                        TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: Size(92.w, 33.h),
                            padding: const EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                          ),
                          child: Text(
                            "Invoice",
                            style: FontStyleConst.instance.buttonText1,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: PaddingMarginConst.instance.allMedium,
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Column(
                          children: <Widget>[
                            InkWell(
                              child: const ContractsW(
                                contractNumber: 154,
                                name: "Bunyod Botirov",
                                amount: 1200000,
                                lastInvoice: 156,
                                invoiceNumber: 6,
                                date: "31.01.2021",
                                status: 0,
                              ),
                              onTap: () {
                                context.bottomNavBarCT.changePage(5, context);
                              },
                            ),
                            SizedBox(height: SizeConst.instance.hSmall),
                          ],
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

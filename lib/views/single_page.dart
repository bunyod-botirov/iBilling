import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/container_decoration.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/sizes/padding_margin_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/widgets/buttons/green_button_white_text.dart';
import 'package:ibilling/widgets/buttons/red_button.dart';
import 'package:ibilling/widgets/contracts_widget.dart';
import 'package:ibilling/widgets/info_text_widget.dart';

class SingleView extends StatelessWidget {
  const SingleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          ImageConst.instance.paperIconBigger,
          fit: BoxFit.none,
        ),
        title: Text(
          "№ 153",
          style: FontStyleConst.instance.appBar,
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(ImageConst.instance.bookmarkUnselected),
            splashRadius: SizeConst.instance.rExtraLarge,
            onPressed: () {},
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: PaddingMarginConst.instance.allMedium,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 343.w,
                    height: 310.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeConst.instance.wExtraLarge,
                      vertical: SizeConst.instance.hRegular,
                    ),
                    decoration: DecorationContainer.instance.decoration1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const InfoTextW(
                          title: "Fisher's full name:",
                          content: "Yoldosheva Ziyoda",
                        ),
                        const InfoTextW(
                          title: "Status of the contract:",
                          content: "Paid",
                        ),
                        const InfoTextW(
                          title: "Amount:",
                          content: "1,200,000 UZS",
                        ),
                        const InfoTextW(
                          title: "Last invoice:",
                          content: "№ 156",
                        ),
                        const InfoTextW(
                          title: "Number of invoices:",
                          content: "6",
                        ),
                        Text.rich(
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          TextSpan(
                            children: <InlineSpan>[
                              TextSpan(
                                text: "Address of the organization:",
                                style: FontStyleConst.instance.title1,
                              ),
                              const TextSpan(
                                text: "  ",
                              ),
                              TextSpan(
                                text:
                                    "Проспект Мирзо-Улугбек, дом 58, Мирзо-Улугбекский район, Ташкент",
                                style: FontStyleConst.instance.body1,
                              ),
                            ],
                          ),
                        ),
                        const InfoTextW(
                          title: "ITN/IEC of the organization:",
                          content: "5647520318",
                        ),
                        const InfoTextW(
                          title: "Created at:",
                          content: "14:38, 2 February, 2021",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConst.instance.hExtraLarge),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RedButtonW(
                        text: "Delete contract",
                        width: 160.w,
                        height: 40.h,
                        voidCallback: () {},
                      ),
                      GreenButtonWithWhiteTextW(
                        text: "Create contract",
                        width: 160.w,
                        height: 40.h,
                        voidCallback: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h),
                  Text(
                    "Other contracts with\nYoldosheva Feruza",
                    style: FontStyleConst.instance.headline2,
                  ),
                  SizedBox(height: SizeConst.instance.hExtraLarge),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: PaddingMarginConst.instance.hsMedium,
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        child: const ContractsW(
                          contractNumber: 2,
                          name: "name",
                          amount: 28674,
                          lastInvoice: 5,
                          invoiceNumber: 3,
                          date: "2552",
                          status: 0,
                        ),
                        onTap: () {},
                      ),
                      SizedBox(height: SizeConst.instance.hSmall),
                    ],
                  ),
                );
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

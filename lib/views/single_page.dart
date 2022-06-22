import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/text_style_comp.dart';
import 'package:ibilling/core/constants/colors_constant.dart';
import 'package:ibilling/core/constants/padding_margin_const.dart';
import 'package:ibilling/core/constants/size_constant.dart';
import 'package:ibilling/widgets/buttons_widget.dart';

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
            icon: SvgPicture.asset("assets/icons/bookmark_unselected.svg"),
            splashRadius: 20,
            onPressed: () {},
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: PaddingMarginConst.allPM,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        title("Fisher's full name:", "Yoldosheva Ziyoda"),
                        title("Status of the contract:", "Paid"),
                        title("Amount:", "1,200,000 UZS"),
                        title("Last invoice:", "№ 156"),
                        title("Number of invoices:", "6"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Address of the organization:",
                              style: TextStyleComp.mediumStyle(14),
                            ),
                            Text(
                              "Проспект Мирзо-Улугбек, дом 58, Мирзо-Улугбекский район, Ташкент",
                              style: TextStyleComp.regularStyleGrey(14),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                        title("ITN/IEC of the organization:", "5647520318"),
                        title("Created at:", "14:38, 2 February, 2021"),
                      ],
                    ),
                  ),
                  SizeConst.verticalBox(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonsW.red("Delete contract", 160, 40, () {}),
                      ButtonsW.greenWithWhiteText(
                          "Delete contract", 160, 40, () {}),
                    ],
                  ),
                  SizeConst.verticalBox(40),
                  Text(
                    "Other contracts with\nYoldosheva Feruza",
                    style: TextStyleComp.boldStyle(16),
                  ),
                  SizeConst.verticalBox(20),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InkWell(
                  child: Container(
                    height: SizeConst.getHeight(148),
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
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
                                color:
                                    const Color(0xFF49B7A5).withOpacity(0.15),
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
                  ),
                  onTap: () {},
                );
              },
              childCount: 5,
            ),
          ),
        ],
      ),
    );
  }

  Row title(String title, String content) {
    return Row(
      children: <Widget>[
        Text(
          title,
          style: TextStyleComp.mediumStyle(14),
        ),
        SizeConst.horizontalBox(8),
        Text(
          content,
          style: TextStyleComp.regularStyleGrey(14),
        ),
      ],
    );
  }
}

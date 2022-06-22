import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/text_style_comp.dart';
import 'package:ibilling/core/constants/colors_constant.dart';
import 'package:ibilling/core/constants/size_constant.dart';
import 'package:ibilling/widgets/app_bar_widget.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW.appBar("New"),
      body: AlertDialog(
        backgroundColor: ColorsConst.dark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        title: Text(
          "What do you want to create?",
          style: TextStyleComp.boldStyle(16),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
              child: Container(
                width: SizeConst.getWidth(287),
                height: SizeConst.getHeight(46),
                decoration: BoxDecoration(
                  color: const Color(0xFF4E4E4E),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: <Widget>[
                    SizeConst.horizontalBox(20),
                    SvgPicture.asset("assets/icons/paper_icon_bigger.svg"),
                    SizeConst.horizontalBox(15),
                    Text(
                      "Contract",
                      style: TextStyleComp.mediumStyle(16),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/new_contract");
              },
            ),
            SizeConst.verticalBox(12),
            InkWell(
              child: Container(
                width: SizeConst.getWidth(287),
                height: SizeConst.getHeight(46),
                decoration: BoxDecoration(
                  color: const Color(0xFF4E4E4E),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: <Widget>[
                    SizeConst.horizontalBox(20),
                    SvgPicture.asset("assets/icons/invoice_icon.svg"),
                    SizeConst.horizontalBox(15),
                    Text(
                      "Invoice",
                      style: TextStyleComp.mediumStyle(16),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/invoice");
              },
            ),
          ],
        ),
      ),
    );
  }
}

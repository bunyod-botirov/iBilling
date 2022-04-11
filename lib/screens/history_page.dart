import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/constants/padding_margin_const.dart';
import 'package:ibilling/core/constants/size_constant.dart';
import 'package:ibilling/widgets/app_bar_widget.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW.appBar(
        Image.asset("assets/images/temp.png"),
        "History",
        action: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/settings_icon.svg"),
            splashRadius: 20,
            onPressed: () {},
          ),
          SvgPicture.asset("assets/icons/v_line.svg"),
          IconButton(
            icon: SvgPicture.asset("assets/icons/search_icon.svg"),
            splashRadius: 20,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: PaddingMarginConst.allPM,
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}

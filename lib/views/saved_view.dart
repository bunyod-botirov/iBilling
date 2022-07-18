import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/sizes/padding_margin_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/widgets/app_bar_widget.dart';
import 'package:ibilling/widgets/contracts_widget.dart';

class SavedView extends StatelessWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW.appBar("Saved"),
      body: ListView.separated(
        itemCount: 5,
        padding: PaddingMarginConst.instance.allMedium,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: SizeConst.instance.hSmall);
        },
        itemBuilder: (BuildContext context, int index) {
          return const ContractsW(
            contractNumber: 1,
            name: "BBB",
            amount: 126754,
            lastInvoice: 3,
            invoiceNumber: 1,
            date: "12521",
            status: 0,
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ibilling/core/components/text_style_comp.dart';
// import 'package:ibilling/core/constants/colors/colors_constant.dart';
// import 'package:ibilling/core/constants/sizes/padding_margin_const.dart';
// import 'package:ibilling/core/constants/size_constant.dart';
// import 'package:ibilling/widgets/app_bar_widget.dart';

// class HistoryPage extends StatelessWidget {
//   const HistoryPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBarW.appBar("History"),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(
//           SizeConst.getWidth(16),
//           SizeConst.getHeight(16),
//           SizeConst.getWidth(16),
//           0,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "Date",
//               style: TextStyleComp.boldStyleGrey(14),
//             ),
//             SizeConst.verticalBox(16),
//             Row(
//               children: <Widget>[
//                 Container(
//                   width: SizeConst.getWidth(116),
//                   height: SizeConst.getHeight(37),
//                   padding: const EdgeInsets.symmetric(horizontal: 12),
//                   decoration: BoxDecoration(
//                     color: ColorsConst.dark,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Text(
//                         "16.02.2021",
//                         style: TextStyleComp.mediumStyleGrey(14),
//                       ),
//                       SvgPicture.asset("assets/icons/calendar_icon.svg"),
//                     ],
//                   ),
//                 ),
//                 SizeConst.horizontalBox(12),
//                 Text(
//                   "-",
//                   style: TextStyleComp.boldStyle(20),
//                 ),
//                 SizeConst.horizontalBox(12),
//                 Container(
//                   width: SizeConst.getWidth(116),
//                   height: SizeConst.getHeight(37),
//                   padding: const EdgeInsets.symmetric(horizontal: 12),
//                   decoration: BoxDecoration(
//                     color: ColorsConst.dark,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Text(
//                         "To",
//                         style: TextStyleComp.mediumStyleGrey(14),
//                       ),
//                       SvgPicture.asset("assets/icons/calendar_icon.svg"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizeConst.verticalBox(4),
//             Expanded(
//               child: ListView.separated(
//                 itemCount: 5,
//                 padding: PaddingMarginConst.symmetricVerticalPM,
//                 physics: const BouncingScrollPhysics(),
//                 separatorBuilder: (BuildContext context, int index) {
//                   return SizeConst.verticalBox(12);
//                 },
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     height: SizeConst.getHeight(148),
//                     padding: const EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: ColorsConst.dark,
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Row(
//                           children: <Widget>[
//                             SvgPicture.asset("assets/icons/paper_icon.svg"),
//                             SizeConst.horizontalBox(6),
//                             Text(
//                               "№ 154",
//                               style: TextStyleComp.boldStyle(14),
//                             ),
//                             const Spacer(),
//                             Container(
//                               width: SizeConst.getWidth(49),
//                               height: SizeConst.getHeight(21),
//                               alignment: Alignment.center,
//                               decoration: BoxDecoration(
//                                 color:
//                                     const Color(0xFF49B7A5).withOpacity(0.15),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Text(
//                                 "Paid",
//                                 style: TextStyle(
//                                   color: Color(0xFF49B7A5),
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Text(
//                               "Fish:",
//                               style: TextStyleComp.mediumStyle(14),
//                             ),
//                             SizeConst.horizontalBox(8),
//                             Text(
//                               "Bunyod Botirov",
//                               style: TextStyleComp.regularStyleGrey(14),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Text(
//                               "Amount",
//                               style: TextStyleComp.mediumStyle(14),
//                             ),
//                             SizeConst.horizontalBox(8),
//                             Text(
//                               "1,200,000 UZS",
//                               style: TextStyleComp.regularStyleGrey(14),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Text(
//                               "Last invoice:",
//                               style: TextStyleComp.mediumStyle(14),
//                             ),
//                             SizeConst.horizontalBox(8),
//                             Text(
//                               "№ 156",
//                               style: TextStyleComp.regularStyleGrey(14),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: <Widget>[
//                             Text(
//                               "Number of invoices:",
//                               style: TextStyleComp.mediumStyle(14),
//                             ),
//                             SizeConst.horizontalBox(8),
//                             Text(
//                               "6",
//                               style: TextStyleComp.regularStyleGrey(14),
//                             ),
//                             const Spacer(),
//                             Text(
//                               "31.01.2021",
//                               style: TextStyleComp.boldStyleGrey(14),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

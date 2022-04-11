import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/text_style_comp.dart';
import 'package:ibilling/core/constants/colors_constant.dart';
import 'package:ibilling/core/constants/padding_margin_const.dart';
import 'package:ibilling/core/constants/size_constant.dart';

class ContractsPage extends StatelessWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConst.black,
        leading: Image.asset("assets/images/temp.png"),
        title: Text(
          "Contracts",
          style: TextStyleComp.mediumStyle(18),
        ),
        actions: <Widget>[
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
      body: Column(
        children: <Widget>[
          CalendarAgenda(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 60)),
            lastDate: DateTime.now().add(const Duration(days: 4)),
            onDateSelected: (date) {},
            backgroundColor: ColorsConst.darker,
            calendarEventColor: ColorsConst.darker,
            calendarEventSelectedColor: ColorsConst.white,
            selectedDateColor: ColorsConst.lightGreen,
            dateColor: const Color(0xFFD1D1D1),
            selectedDayPosition: SelectedDayPosition.center,
            fullCalendarScroll: FullCalendarScroll.horizontal,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              padding: PaddingMarginConst.allPM,
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (BuildContext context, int index) {
                return SizeConst.verticalBox(12);
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: SizeConst.getHeight(148),
                  padding: const EdgeInsets.all(12),
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
                              color: const Color(0xFF49B7A5).withOpacity(0.15),
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
                          const Text(
                            "Bunyod Botirov",
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
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
                          const Text(
                            "1,200,000 UZS",
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
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
                          const Text(
                            "№ 156",
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
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
                          const Text(
                            "6",
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "31.01.2021",
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

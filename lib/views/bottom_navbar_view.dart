import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/text_style_comp.dart';
import 'package:ibilling/core/constants/colors_constant.dart';
import 'package:ibilling/core/constants/size_constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);

    return Scaffold(
      body: Scaffold(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsConst.darkest,
        selectedItemColor: ColorsConst.white,
        selectedLabelStyle: TextStyleComp.boldStyle(10),
        unselectedItemColor: const Color(0xFFA6A6A6),
        unselectedLabelStyle: const TextStyle(
          color: Color(0xFFA6A6A6),
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Contracts",
            icon: SvgPicture.asset("assets/icons/contracts_unselected.svg"),
            activeIcon: SvgPicture.asset("assets/icons/contracts_selected.svg"),
          ),
          BottomNavigationBarItem(
            label: "History",
            icon: SvgPicture.asset("assets/icons/history_unselected.svg"),
            activeIcon: SvgPicture.asset("assets/icons/history_selected.svg"),
          ),
          BottomNavigationBarItem(
            label: "New",
            icon: SvgPicture.asset("assets/icons/new_unselected.svg"),
            activeIcon: SvgPicture.asset("assets/icons/new_selected.svg"),
          ),
          BottomNavigationBarItem(
            label: "Saved",
            icon: SvgPicture.asset("assets/icons/saved_unselected.svg"),
            activeIcon: SvgPicture.asset("assets/icons/saved_selected.svg"),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: SvgPicture.asset("assets/icons/profile_unselected.svg"),
            activeIcon: SvgPicture.asset("assets/icons/profile_selected.svg"),
          ),
        ],
        onTap: (int index) {},
      ),
    );
  }
}

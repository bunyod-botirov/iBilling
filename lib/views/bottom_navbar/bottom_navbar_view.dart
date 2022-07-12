import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/base/base_view/base_view.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/extensions/bloc_extension.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_cubit.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_state.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (BuildContext context, Object? state) {
        return BaseView(
          viewModal: BottomNavBar,
          onPageBuilder: (BuildContext context, Object? widget) {
            return scaffold(context);
          },
        );
      },
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: context
          .bottomNavBarCTStream.pages[context.bottomNavBarCTStream.currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.bottomNavBarCTStream.currentPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConst.instance.kDarkest,
        selectedItemColor: ColorConst.instance.kWhite,
        selectedLabelStyle: FontStyleConst.instance.bottomBarAble,
        unselectedItemColor: ColorConst.instance.kDarkGrey,
        unselectedLabelStyle: FontStyleConst.instance.bottomBarDisable,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Contracts",
            icon: SvgPicture.asset(
              ImageConst.instance.toIcon("contracts_unselected"),
            ),
            activeIcon: SvgPicture.asset(
              ImageConst.instance.toIcon("contracts_selected"),
            ),
          ),
          BottomNavigationBarItem(
            label: "History",
            icon: SvgPicture.asset(
              ImageConst.instance.toIcon("history_unselected"),
            ),
            activeIcon: SvgPicture.asset(
              ImageConst.instance.toIcon("history_selected"),
            ),
          ),
          BottomNavigationBarItem(
            label: "New",
            icon: SvgPicture.asset(
              ImageConst.instance.toIcon("new_unselected"),
            ),
            activeIcon: SvgPicture.asset(
              ImageConst.instance.toIcon("new_selected"),
            ),
          ),
          BottomNavigationBarItem(
            label: "Saved",
            icon: SvgPicture.asset(
              ImageConst.instance.toIcon("saved_unselected"),
            ),
            activeIcon: SvgPicture.asset(
              ImageConst.instance.toIcon("saved_selected"),
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: SvgPicture.asset(
              ImageConst.instance.toIcon("profile_unselected"),
            ),
            activeIcon: SvgPicture.asset(
              ImageConst.instance.toIcon("profile_selected"),
            ),
          ),
        ],
        onTap: (int index) {
          context.bottomNavBarCT.changePage(index);
        },
      ),
    );
  }
}

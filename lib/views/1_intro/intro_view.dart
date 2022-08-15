import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/navigation/navigation_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/constants/texts/text_const.dart';
import 'package:ibilling/router/router/router.dart';
import 'package:ibilling/views/1_intro/_widgets/grow_tab_page.dart';
import 'package:ibilling/views/1_intro/_widgets/search_tab_page.dart';
import 'package:ibilling/views/1_intro/_widgets/welcome_tab_page.dart';
import 'package:ibilling/views/1_intro/intro_cubit.dart';
import 'package:ibilling/views/1_intro/intro_state.dart';
import 'package:ibilling/widgets/buttons/intro_button.dart';

class IntroView extends StatelessWidget {
  IntroView({Key? key}) : super(key: key);

  TabController? tabController;
  int tabPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroCubit, IntroState>(
      builder: (BuildContext context, Object? state) {
        return scaffold();
      },
    );
  }

  Scaffold scaffold() {
    return Scaffold(
      backgroundColor: ColorConst.instance.kWhite,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    TextConst.INTRO_TEXT,
                    style: FontStyleConst.instance.introAppBar,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          offset: Offset(2.w, 4.h),
                          blurRadius: 25.r,
                          spreadRadius: 0,
                          color: ColorConst.instance.kBlack.withOpacity(0.05),
                        ),
                      ],
                    ),
                    child: SvgPicture.asset(
                      ImageConst.instance.langUzb,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 90.h),
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: 365.h,
                  child: PageView(
                    physics: const BouncingScrollPhysics(),
                    children: const <Widget>[
                      WelcomeTabPage(),
                      SearchTabPage(),
                      GrowTabPage(),
                    ],
                    onPageChanged: (int index) {
                      tabPageIndex = index;
                      // setState(() {});
                    },
                  ),
                ),
                SizedBox(height: SizeConst.instance.hExtraLarge),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 170.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        color: ColorConst.instance.kLightGrey,
                        size: 8.r,
                      ),
                      Icon(
                        Icons.circle,
                        color: ColorConst.instance.kIntro,
                        size: 8.r,
                      ),
                      Icon(
                        Icons.circle,
                        color: ColorConst.instance.kLightGrey,
                        size: 8.r,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80.h),
                IntroButton(
                  text: "Log in",
                  voidCallback: () {
                    NavigationService.instance
                        .pushNamed(routeName: NavigationConst.SIGN_IN);
                  },
                ),
                SizedBox(height: SizeConst.instance.hMedium),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text: "By logging in, you agree to our ",
                      style: FontStyleConst.instance.introBottom1,
                      children: <InlineSpan>[
                        TextSpan(
                          text: "Terms of Use",
                          style: FontStyleConst.instance.introBottom2,
                        ),
                        TextSpan(
                          text: " and ",
                          style: FontStyleConst.instance.introBottom1,
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: FontStyleConst.instance.introBottom2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

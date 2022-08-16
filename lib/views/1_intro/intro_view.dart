import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/navigation/navigation_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/constants/texts/text_const.dart';
import 'package:ibilling/core/extensions/bloc_extension.dart';
import 'package:ibilling/core/extensions/string_extension.dart';
import 'package:ibilling/router/router/router.dart';
import 'package:ibilling/views/1_intro/_widgets/language_bottom_sheet.dart';
import 'package:ibilling/views/1_intro/_widgets/tab_page.dart';
import 'package:ibilling/views/1_intro/intro_cubit.dart';
import 'package:ibilling/views/1_intro/intro_state.dart';
import 'package:ibilling/widgets/buttons/intro_button.dart';
import 'package:ibilling/widgets/language_icon.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroCubit, IntroState>(
      builder: (BuildContext context, Object? state) {
        return scaffold(context);
      },
    );
  }

  Scaffold scaffold(BuildContext context) {
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
                  LanguageIcon(
                    iconName: context.locale.toString().contains("uz")
                        ? ImageConst.instance.langUzb
                        : context.locale.toString().contains("ru")
                            ? ImageConst.instance.langRus
                            : ImageConst.instance.langEng,
                    onPressed: () {
                      LagnuageModalSheet.instance.changeLang(context);
                    },
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
                    children: <Widget>[
                      TabPage(
                        imageName: ImageConst.instance.introWelcome,
                        title: "welcome".locale,
                        subTitle:
                            "IBilling tool lets you store customer and prospect contact information, identify sales opportunities.",
                      ),
                      TabPage(
                        imageName: ImageConst.instance.introSearch,
                        title: "Save and serch on IBilling",
                        subTitle:
                            "IBilling tool lets you store customer and prospect contact information, identify sales opportunities.",
                      ),
                      TabPage(
                        imageName: ImageConst.instance.introGrow,
                        title: "Grow on IBilling",
                        subTitle:
                            "IBilling tool lets you store customer and prospect contact information, identify sales opportunities.",
                      ),
                    ],
                    onPageChanged: (int index) {
                      context.introCT.changeTab(index);
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
                        size: 8.r,
                        color: context.introCTStream.tabPageIndex == 0
                            ? ColorConst.instance.kIntro
                            : ColorConst.instance.kLightGrey,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8.r,
                        color: context.introCTStream.tabPageIndex == 1
                            ? ColorConst.instance.kIntro
                            : ColorConst.instance.kLightGrey,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8.r,
                        color: context.introCTStream.tabPageIndex == 2
                            ? ColorConst.instance.kIntro
                            : ColorConst.instance.kLightGrey,
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

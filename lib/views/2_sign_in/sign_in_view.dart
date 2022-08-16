import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/navigation/navigation_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/extensions/bloc_extension.dart';
import 'package:ibilling/router/router/router.dart';
import 'package:ibilling/views/2_sign_in/sign_in.cubit.dart';
import 'package:ibilling/views/2_sign_in/sign_in_state.dart';
import 'package:ibilling/widgets/buttons/intro_button.dart';
import 'package:ibilling/widgets/sign_text_field_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      builder: (BuildContext context, Object? state) {
        return scaffold(context);
      },
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConst.instance.kWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 48.h),
              Text(
                "Log in to account",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: ColorConst.instance.kIntro,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 32.h),
              SignTextFieldW(
                controller: context.signInCTStream.emailController,
                title: "Email",
                isLastField: false,
                onPressed: () {
                  context.signInCT.continueButtonPressable();
                },
              ),
              SizedBox(height: SizeConst.instance.hMedium),
              SignTextFieldW(
                controller: context.signInCTStream.passwordController,
                title: "Password",
                isLastField: true,
                isObsecureText: context.signInCTStream.isObsecureText,
                obsecureTextPressed: () => context.signInCT.changeIsObsecure(),
                onPressed: () {
                  context.signInCT.continueButtonPressable();
                },
              ),
              SizedBox(height: 28.h),
              IntroButton(
                text: "Continue",
                voidCallback: context.signInCTStream.continueButton
                    ? () => NavigationService.instance.pushNamedRemoveUntil(
                        routeName: NavigationConst.BOTTOM_NAV_BAR_VIEW)
                    : null,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Do not have an account? ",
                    style: FontStyleConst.instance.introBottom1,
                  ),
                  InkWell(
                    child: Text(
                      "Create it!",
                      style: FontStyleConst.instance.introBottom2,
                    ),
                    onTap: () {
                      NavigationService.instance
                          .pushNamed(routeName: NavigationConst.SIGN_UP);
                    },
                  ),
                ],
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}

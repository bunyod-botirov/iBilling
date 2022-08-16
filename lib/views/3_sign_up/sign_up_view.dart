import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/navigation/navigation_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/extensions/bloc_extension.dart';
import 'package:ibilling/router/router/router.dart';
import 'package:ibilling/views/3_sign_up/sign_up_cubit.dart';
import 'package:ibilling/views/3_sign_up/sign_up_state.dart';
import 'package:ibilling/widgets/buttons/intro_button.dart';
import 'package:ibilling/widgets/sign_text_field_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (BuildContext context, Object? state) {
        return scaffold(context);
      },
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.instance.kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 48.h),
                Text(
                  "Create an account",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: ColorConst.instance.kIntro,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 32.h),
                SignTextFieldW(
                  controller: context.signUpCTStream.nameController,
                  title: "Full name",
                  isLastField: false,
                  onPressed: () => context.signUpCT.continueButtonPressed(),
                ),
                SizedBox(height: SizeConst.instance.hMedium),
                SignTextFieldW(
                  controller: context.signUpCTStream.emailController,
                  title: "Email",
                  isLastField: false,
                  onPressed: () => context.signUpCT.continueButtonPressed(),
                ),
                SizedBox(height: SizeConst.instance.hMedium),
                SignTextFieldW(
                  controller: context.signUpCTStream.passwordController,
                  title: "Password",
                  isLastField: true,
                  isObsecureText: context.signUpCTStream.isObsecureText,
                  obsecureTextPressed: () =>
                      context.signUpCT.changeIsObsecure(),
                  onPressed: () => context.signUpCT.continueButtonPressed(),
                ),
                SizedBox(height: 28.h),
                IntroButton(
                  text: "Continue",
                  voidCallback: context.signUpCTStream.continueButton
                      ? () {
                          NavigationService.instance.pushNamedRemoveUntil(
                              routeName: NavigationConst.BOTTOM_NAV_BAR_VIEW);
                        }
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

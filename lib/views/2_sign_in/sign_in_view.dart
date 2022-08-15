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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 48.h),
              Center(
                child: Text(
                  "Log in to account",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: ColorConst.instance.kIntro,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Text(
                "Email or phone",
                style: FontStyleConst.instance.introBody,
              ),
              SizedBox(height: 4.h),
              SizedBox(
                width: 327.w,
                height: 44.h,
                child: TextFormField(
                  controller: context.signInCTStream.emailController,
                  cursorColor: ColorConst.instance.kBlack,
                  cursorHeight: SizeConst.instance.hExtraLarge,
                  textAlignVertical: TextAlignVertical.center,
                  style: FontStyleConst.instance.introTextForm,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConst.instance.wMedium),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        color: ColorConst.instance.kDarkGrey,
                        width: 1.2.w,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        color: ColorConst.instance.kDarkGrey,
                        width: 1.2.w,
                      ),
                    ),
                  ),
                  onChanged: (String v) {
                    context.signInCT.continueButtonPressed();
                  },
                ),
              ),
              SizedBox(height: SizeConst.instance.hMedium),
              Text(
                "Password",
                style: FontStyleConst.instance.introBody,
              ),
              SizedBox(height: 4.h),
              SizedBox(
                width: 327.w,
                height: 44.h,
                child: TextFormField(
                  controller: context.signInCTStream.passwordController,
                  style: FontStyleConst.instance.introTextForm,
                  cursorHeight: SizeConst.instance.hExtraLarge,
                  cursorColor: ColorConst.instance.kBlack,
                  textAlignVertical: TextAlignVertical.center,
                  obscureText: context.signInCTStream.isObsecureText,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: SizeConst.instance.wMedium),
                    suffixIcon: InkWell(
                      child: Icon(
                        context.signInCTStream.isObsecureText
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                        color: ColorConst.instance.kBlack,
                        size: 20.r,
                      ),
                      onTap: () {
                        context.signInCT.changeIsObsecure();
                      },
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        color: ColorConst.instance.kDarkGrey,
                        width: 1.2.w,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        color: ColorConst.instance.kDarkGrey,
                        width: 1.2.w,
                      ),
                    ),
                  ),
                  onChanged: (String v) {
                    context.signInCT.continueButtonPressed();
                  },
                ),
              ),
              SizedBox(height: 28.h),
              IntroButton(
                text: "Continue",
                voidCallback: context.signInCTStream.continueButton
                    ? () {
                        NavigationService.instance.pushNamedRemoveUntil(
                            routeName: NavigationConst.BOTTOM_NAV_BAR_VIEW);
                      }
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

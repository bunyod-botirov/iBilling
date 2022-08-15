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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 48.h),
                Center(
                  child: Text(
                    "Create an account",
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
                  "Full name",
                  style: FontStyleConst.instance.introBody,
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  width: 327.w,
                  height: 44.h,
                  child: TextFormField(
                    controller: context.signUpCTStream.nameController,
                    cursorColor: ColorConst.instance.kBlack,
                    cursorHeight: SizeConst.instance.hExtraLarge,
                    textAlignVertical: TextAlignVertical.center,
                    style: FontStyleConst.instance.introTextForm,
                    textInputAction: TextInputAction.next,
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
                      context.signUpCT.continueButtonPressed();
                    },
                  ),
                ),
                SizedBox(height: SizeConst.instance.hMedium),
                Text(
                  "Email",
                  style: FontStyleConst.instance.introBody,
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  width: 327.w,
                  height: 44.h,
                  child: TextFormField(
                    controller: context.signUpCTStream.emailController,
                    cursorColor: ColorConst.instance.kBlack,
                    cursorHeight: SizeConst.instance.hExtraLarge,
                    textAlignVertical: TextAlignVertical.center,
                    style: FontStyleConst.instance.introTextForm,
                    textInputAction: TextInputAction.next,
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
                      context.signUpCT.continueButtonPressed();
                    },
                  ),
                ),
                SizedBox(height: SizeConst.instance.hMedium),
                Text(
                  "Phone number",
                  style: FontStyleConst.instance.introBody,
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  width: 327.w,
                  height: 44.h,
                  child: TextFormField(
                    controller: context.signUpCTStream.phoneController,
                    cursorColor: ColorConst.instance.kBlack,
                    cursorHeight: SizeConst.instance.hExtraLarge,
                    textAlignVertical: TextAlignVertical.center,
                    style: FontStyleConst.instance.introTextForm,
                    textInputAction: TextInputAction.next,
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
                      context.signUpCT.continueButtonPressed();
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
                    controller: context.signUpCTStream.passwordController,
                    style: FontStyleConst.instance.introTextForm,
                    cursorHeight: SizeConst.instance.hExtraLarge,
                    cursorColor: ColorConst.instance.kBlack,
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: context.signUpCTStream.isObsecureText,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: SizeConst.instance.wMedium),
                      suffixIcon: InkWell(
                        child: Icon(
                          context.signUpCTStream.isObsecureText
                              ? Icons.remove_red_eye
                              : Icons.remove_red_eye_outlined,
                          color: ColorConst.instance.kBlack,
                          size: 20.r,
                        ),
                        onTap: () {
                          context.signUpCT.changeIsObsecure();
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
                      context.signUpCT.continueButtonPressed();
                    },
                  ),
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

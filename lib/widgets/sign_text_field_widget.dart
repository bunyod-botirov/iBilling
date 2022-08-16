import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';

class SignTextFieldW extends StatelessWidget {
  final String? title;
  final TextEditingController controller;
  final Function onPressed;
  final VoidCallback? obsecureTextPressed;
  final bool? isObsecureText;
  final bool isLastField;

  const SignTextFieldW({
    Key? key,
    required this.controller,
    required this.isLastField,
    required this.onPressed,
    this.obsecureTextPressed,
    this.title,
    this.isObsecureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title ?? "",
          style: FontStyleConst.instance.introBody,
        ),
        SizedBox(height: 4.h),
        SizedBox(
          width: 327.w,
          height: 44.h,
          child: TextFormField(
            controller: controller,
            cursorColor: ColorConst.instance.kBlack,
            cursorHeight: SizeConst.instance.hExtraLarge,
            textAlignVertical: TextAlignVertical.center,
            style: FontStyleConst.instance.introTextForm,
            obscureText: isObsecureText ?? false,
            textInputAction:
                isLastField ? TextInputAction.done : TextInputAction.next,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: SizeConst.instance.wMedium),
              suffixIcon: isObsecureText == null
                  ? null
                  : InkWell(
                      onTap: obsecureTextPressed,
                      child: Icon(
                        isObsecureText!
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                        color: ColorConst.instance.kBlack,
                        size: 20.r,
                      ),
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
              onPressed();
            },
          ),
        ),
      ],
    );
  }
}

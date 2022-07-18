import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/colors/color_constant.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';

class RedButtonW extends StatelessWidget {
  final String text;
  final double width, height;
  final VoidCallback voidCallback;
  const RedButtonW({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.voidCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: voidCallback,
        style: ElevatedButton.styleFrom(
          primary: ColorConst.instance.kRed.withOpacity(0.23),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConst.instance.rMaxSmall1),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: ColorConst.instance.kRed,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';

class PaddingMarginConst {
  static final PaddingMarginConst _instance = PaddingMarginConst._init();
  static PaddingMarginConst get instance => _instance;
  PaddingMarginConst._init();

  final EdgeInsets hsMedium = EdgeInsets.symmetric(
    horizontal: SizeConst.instance.wMedium,
  );
  final EdgeInsets vsMedium = EdgeInsets.symmetric(
    vertical: SizeConst.instance.hMedium,
  );
  final EdgeInsets allMedium = EdgeInsets.all(
    SizeConst.instance.rMedium,
  );
  final EdgeInsets allSmall = EdgeInsets.all(
    SizeConst.instance.rSmall,
  );
}

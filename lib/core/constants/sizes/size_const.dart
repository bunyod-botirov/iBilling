import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeConst {
  static final SizeConst _instance = SizeConst._init();
  static SizeConst get instance => _instance;
  SizeConst._init();

  // Custom
  final double rStatus = 8.r;

  // Heights
  final double hExtraSmall = 10.0.h;
  final double hSmall = 12.0.h;
  final double hRegular = 14.0.h;
  final double hMedium = 16.0.h;
  final double hLarge = 18.0.h;
  final double hExtraLarge = 20.0.h;

  // Widths
  final double wExtraSmall = 10.0.w;
  final double wSmall = 12.0.w;
  final double wRegular = 14.0.w;
  final double wMedium = 16.0.w;
  final double wLarge = 18.0.w;
  final double wExtraLarge = 20.0.w;

  // Radius
  final double rExtraSmall = 10.0.r;
  final double rSmall = 12.0.r;
  final double rRegular = 14.0.r;
  final double rMedium = 16.0.r;
  final double rLarge = 18.0.r;
  final double rExtraLarge = 20.0.r;

  // Fonts
  final double fExtraSmall = 10.0.sp;
  final double fSmall = 12.0.sp;
  final double fRegular = 14.0.sp;
  final double fMedium = 16.0.sp;
  final double fLarge = 18.0.sp;
  final double fExtraLarge = 20.0.sp;
}

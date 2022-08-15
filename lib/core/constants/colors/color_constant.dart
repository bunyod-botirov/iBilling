import 'package:flutter/material.dart';

class ColorConst {
  static final ColorConst _instance = ColorConst._init();
  static ColorConst get instance => _instance;
  ColorConst._init();

  // Classic
  final Color kLightGrey = const Color(0xFFDADADA);
  final Color kDarkGrey = const Color(0xFF999999);
  final Color kIntroGrey = const Color(0xFFF3F3F3);
  final Color kWhite = const Color(0xFFFFFFFF);
  final Color kBlack = const Color(0xFF000000);
  final Color kDark = const Color(0xFF2A2A2D);
  final Color kDarker = const Color(0xFF1E1E20);
  final Color kDarkest = const Color(0xFF141416);

  // Custom
  final Color kLightGreen = const Color(0xFF00A795);
  final Color kDarkGreen = const Color(0xFF008F7F);
  final Color kRed = const Color(0xFFFF426D);
  final Color kIntro = const Color(0xFF7654FF);

  final Color kStatusGreen = const Color(0xFF49B7A5);
  final Color kStatusYellow = const Color(0xFFFDAB2A);
  final Color kStatusRed = const Color(0xFFF85379);
}

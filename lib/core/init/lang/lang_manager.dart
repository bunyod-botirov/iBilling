// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class LanguageManager {
  static final LanguageManager _instance = LanguageManager._init();
  static LanguageManager get instance => _instance;
  LanguageManager._init();

  final LANG_ASSET_PATH = "assets/lang";

  final enLocale = const Locale("en", "US");
  final ruLocale = const Locale("ru", "RU");
  final uzLocale = const Locale("uz", "UZ");

  List<Locale> get supportedLocales => [enLocale, ruLocale, uzLocale];
}

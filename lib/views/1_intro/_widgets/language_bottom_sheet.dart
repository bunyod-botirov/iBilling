import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/images/image_const.dart';
import 'package:ibilling/core/constants/sizes/size_const.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/init/lang/lang_manager.dart';
import 'package:ibilling/widgets/language_radio_tile.dart';

class LagnuageModalSheet {
  static final LagnuageModalSheet _instance = LagnuageModalSheet._init();
  static LagnuageModalSheet get instance => _instance;
  LagnuageModalSheet._init();

  Future changeLang(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(SizeConst.instance.rMedium),
        ),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: SizeConst.instance.hExtraLarge),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Text(
                  "Choose a language",
                  style: FontStyleConst.instance.introTitle,
                ),
              ),
              SizedBox(height: 24.h),
              LanguageRadioTile(
                iconName: ImageConst.instance.langEng,
                title: "English",
                value: "en",
                language: LanguageManager.instance.enLocale,
              ),
              LanguageRadioTile(
                iconName: ImageConst.instance.langRus,
                title: "Русский",
                value: "ru",
                language: LanguageManager.instance.ruLocale,
              ),
              LanguageRadioTile(
                iconName: ImageConst.instance.langUzb,
                title: "O‘zbek",
                value: "uz",
                language: LanguageManager.instance.uzLocale,
              ),
            ],
          ),
        );
      },
    );
  }
}

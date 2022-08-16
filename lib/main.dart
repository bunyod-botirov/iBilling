import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/navigation/navigation_const.dart';
import 'package:ibilling/core/init/lang/lang_manager.dart';
import 'package:ibilling/core/init/notifier/cubit_list.dart';
import 'package:ibilling/core/init/theme/dark_theme.dart';
import 'package:ibilling/core/constants/texts/text_const.dart';
import 'package:ibilling/router/router/router.dart';
import 'package:ibilling/router/routers.dart';

void main() async {
  await _init();
  runApp(
    MultiBlocProvider(
      providers: [...ApplicationCubit.instance.dependItems],
      child: EasyLocalization(
        saveLocale: true,
        supportedLocales: LanguageManager.instance.supportedLocales,
        path: LanguageManager.instance.LANG_ASSET_PATH,
        fallbackLocale: LanguageManager.instance.enLocale,
        startLocale: _deviceLangCheck(),
        child: const MyApp(),
      ),
    ),
  );
}

Future _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}

Locale _deviceLangCheck() {
  return Platform.localeName.contains("uz")
      ? LanguageManager.instance.uzLocale
      : Platform.localeName.contains("ru")
          ? LanguageManager.instance.ruLocale
          : LanguageManager.instance.enLocale;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 815),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: TextConst.APP_TITLE,
          darkTheme: AppThemeDark.instance.darkTheme,
          themeMode: ThemeMode.dark,
          navigatorKey: NavigationService.instance.navigatorKey,
          onGenerateRoute: Routes.instance.onGenerateRoute,
          initialRoute: NavigationConst.SPLASH_SCREEN,
        );
      },
    );
  }
}

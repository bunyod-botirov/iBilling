import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ibilling/core/constants/navigation/navigation_const.dart';
import 'package:ibilling/core/init/notifier/cubit_list.dart';
import 'package:ibilling/core/init/theme/dark_theme.dart';
import 'package:ibilling/core/constants/texts/text_const.dart';
import 'package:ibilling/router/routers.dart';
import 'package:ibilling/views/bottom_navbar/bottom_navbar_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [...ApplicationCubit.instance.dependItems],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 815),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: TextConst.APP_TITLE,
          darkTheme: AppThemeDark.instance.darkTheme,
          
          themeMode: ThemeMode.dark,
          onGenerateRoute: Routes.instance.onGenerateRoute,
          initialRoute: NavigationConst.BOTTOM_NAV_BAR_VIEW,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ibilling/core/components/theme_comp.dart';
import 'package:ibilling/core/constants/texts/text_const.dart';
import 'package:ibilling/router/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TextConst.appTitle,
      darkTheme: ThemeComp.darkTheme,
      themeMode: ThemeMode.dark,
      onGenerateRoute: Routes.instance.onGenerateRoute,
      initialRoute: "/bottom_navbar",
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ibilling/core/components/theme_comp.dart';
import 'package:ibilling/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iBilling',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeComp.darkTheme,
      themeMode: ThemeMode.dark,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: "/bottom_navbar",
    );
  }
}

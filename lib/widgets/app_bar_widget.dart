import 'package:flutter/material.dart';

class AppBarW {
  static AppBar appBar(Widget leading, String title, {List<Widget>? action}) {
    return AppBar(
      leading: leading,
      title: Text(title),
      actions: action,
    );
  }
}

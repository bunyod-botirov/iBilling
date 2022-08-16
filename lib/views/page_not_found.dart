import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/texts/font_style_const.dart';
import 'package:ibilling/core/extensions/string_extension.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "page_not_found".locale,
              style: FontStyleConst.instance.appBar,
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Check token and go to home page
              },
              child: const Text("Go to home page"),
            ),
          ],
        ),
      ),
    );
  }
}

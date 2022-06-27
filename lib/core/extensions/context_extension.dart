import 'package:flutter/material.dart';

extension ForContext on BuildContext {
  // Returns same as MediaQuery.of(context)
  MediaQueryData get mq => MediaQuery.of(this);
  // Returns same as MediaQuery.of(context).size.width
  double get w => mq.size.width;
  // Returns same as MediaQuery.of(context).size.height
  double get h => mq.size.height;

  double width(double v) => (v / 375.0) * w;

  double height(double v) => (v / 815.0) * h;
}

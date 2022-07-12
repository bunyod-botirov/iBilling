import 'package:flutter/material.dart';
import 'package:ibilling/core/base/base_state/base_view_state.dart';

class BaseView<T> extends StatefulWidget {
  final T viewModal;
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final Function(T model)? onModelReady;
  final VoidCallback? onDispose;

  const BaseView({
    Key? key,
    required this.viewModal,
    required this.onPageBuilder,
    this.onModelReady,
    this.onDispose,
  }) : super(key: key);

  @override
  State<BaseView> createState() => BaseViewState();
}

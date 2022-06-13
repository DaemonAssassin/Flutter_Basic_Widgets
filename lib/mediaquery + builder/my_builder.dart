import 'package:flutter/material.dart';

typedef MyWidgetBuilder = Widget Function(BuildContext context);

class MyBuilder extends StatelessWidget {
  const MyBuilder({
    Key? key,
    required this.builder,
  })  : assert(builder != null),
        super(key: key);

  final MyWidgetBuilder builder;

  @override
  Widget build(BuildContext context) => builder.call(context);
}

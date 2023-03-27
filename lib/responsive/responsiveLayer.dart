import 'package:flutter/material.dart';

class ResponsiveLayer extends StatelessWidget {
  final Widget mobileBody;
  final Widget webBody;

  const ResponsiveLayer(
      {Key? key, required this.mobileBody, required this.webBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.minWidth < 920) {
        return mobileBody;
      } else {
        return webBody;
      }
    });
  }
}

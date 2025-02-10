import 'package:flutter/material.dart';
import 'package:folio/utils/layout/adaptive.dart';

class CustomSpacer extends StatelessWidget {
  const CustomSpacer({ Key? key, this.widthFactor, this.heightFactor, }) : super(key: key);

  final double? widthFactor;
  final double? heightFactor;

  @override
  Widget build(BuildContext context) {
    double widthFraction = widthFactor ?? 0;
    double heightFraction = heightFactor ?? 0;
    return SizedBox(
      width: assignWidth(context, widthFraction),
      height: assignHeight(context, heightFraction),
    );
  }
}
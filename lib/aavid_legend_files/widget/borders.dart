
import 'package:flutter/material.dart';
import 'package:folio/aavid_legend_files/widget/page_wrapper.dart';
import 'package:folio/aavid_legend_files/widget/sizes.dart';
import 'package:folio/utils/constant/color_constant.dart';

class Borders {
   static const UnderlineInputBorder primaryInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.grey,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
  );

  static const UnderlineInputBorder enabledBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.grey, //AppColors.primaryColor,
      width: Sizes.WIDTH_2,
      style: BorderStyle.solid,
    ),
  );

  static const UnderlineInputBorder focusedBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.black,
      width: Sizes.WIDTH_2,
      style: BorderStyle.solid,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_color_path.dart';

class AppTextStyle {
  static final TextStyle textFont18W600 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColorPath.black.withValues(alpha: 75),
  );

  static final TextStyle textFont13W400 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColorPath.black.withValues(alpha: 74),
  );
  static final TextStyle textFont14W700 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColorPath.black.withValues(alpha: 75),
  );
}

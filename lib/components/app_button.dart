import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';

class AppButton extends StatelessWidget {
  final String content;
  final VoidCallback onTap;

  const AppButton({required this.content, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth - 26 - 24,
        height: 62,
        decoration: BoxDecoration(color: AppColorPath.blue),
        child: Center(
          child: AppText(
            title: content,
            style: AppTextStyle.textFont18W600.copyWith(
              color: AppColorPath.white,
            ),
          ),
        ),
      ),
    );
  }
}

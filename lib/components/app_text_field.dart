import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  const AppTextField({required this.hintText, super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColorPath.white,
        hintText: hintText,
        hintStyle: AppTextStyle.textFont13W400,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';
import 'package:todo_app/constants/app_image_path.dart';

class UserInfoDashboardWidget extends StatelessWidget {
  const UserInfoDashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: ((307 / 852) * size.height),
          color: AppColorPath.blue,
          padding: EdgeInsets.only(top: ((133 / 852) * size.height)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColorPath.darkBlue, width: 2.0),
                ),
                child: ClipOval(
                  child: Image.asset(AppImagePath.avatarImg, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 18),
              AppText(
                title: 'Welcome, Oliva Grace',
                style: AppTextStyle.textFont18W600.copyWith(
                  color: AppColorPath.white,
                ),
              ),
            ],
          ),
        ),
        Image.asset(AppImagePath.bgTopLeftCirclesImg),
      ],
    );
  }
}

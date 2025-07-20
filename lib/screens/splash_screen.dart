import 'package:flutter/material.dart';
import 'package:todo_app/components/app_button.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';
import 'package:todo_app/constants/app_image_path.dart';
import 'package:todo_app/screens/registration_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPath.lightWhite,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(AppImagePath.bgTopLeftCirclesImg),
          ),
          SizedBox(height: 59),
          Image.asset(AppImagePath.manBesidePhoneImg),
          SizedBox(height: 45),
          AppText(
            title: 'Gets things done with TODO',
            style: AppTextStyle.textFont18W600,
          ),
          SizedBox(height: 36),
          AppText(
            title:
                'Lorem ipsum dolor sit amet,\n'
                'consectetur adipiscing elit. Interdum\n'
                'dictum tempus, interdum at dignissim\n'
                'metus. Ultricies sed nunc.',
            textAlign: TextAlign.center,
            style: AppTextStyle.textFont13W400,
          ),
          Spacer(),
          AppButton(
            content: 'Get Started',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistrationScreen()),
              );
            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}

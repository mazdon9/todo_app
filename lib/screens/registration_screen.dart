import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/components/app_button.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_field.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';
import 'package:todo_app/constants/app_image_path.dart';
import 'package:todo_app/screens/login_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPath.lightWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(AppImagePath.bgTopLeftCirclesImg),
            ),
            SizedBox(height: 76),
            AppText(
              title: 'Welcome Onboard!',
              style: AppTextStyle.textFont18W600,
            ),
            SizedBox(height: 14),
            AppText(
              title: 'Let’s help you meet up your tasks!',
              style: AppTextStyle.textFont13W400,
            ),
            SizedBox(height: 49),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: AppTextField(hintText: 'Enter your full name'),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: AppTextField(hintText: 'Enter your email'),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: AppTextField(hintText: 'Enter your password'),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: AppTextField(hintText: 'Confirm password'),
            ),
            SizedBox(height: 50),
            AppButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              content: 'Register',
            ),
            SizedBox(height: 23),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account ?',
                    style: AppTextStyle.textFont13W400,
                  ),
                  TextSpan(
                    text: ' Sign in',
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                    style: AppTextStyle.textFont13W400.copyWith(
                      color: AppColorPath.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/components/app_button.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_field.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';
import 'package:todo_app/constants/app_image_path.dart';
import 'package:todo_app/screens/dashboard_screen.dart';
import 'package:todo_app/screens/registration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            SizedBox(height: 35),
            AppText(title: 'Welcome Back!', style: AppTextStyle.textFont18W600),
            SizedBox(height: 10),
            DottedBorder(
              // options: RectDottedBorderOptions(
              //   dashPattern: [10, 5],
              //   strokeWidth: 1,
              //   padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
              // ),
              dashPattern: [10, 5],
              strokeWidth: 1,
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
              child: Image.asset(AppImagePath.manInsidePhoneImg),
            ),
            SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: AppTextField(hintText: 'Enter your email'),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: AppTextField(hintText: 'Enter your password'),
            ),
            SizedBox(height: 25),
            GestureDetector(
              /// TODO: Forgot Password Flow
              onTap: () {},
              child: Center(
                child: AppText(
                  title: 'Forgot Password',
                  style: AppTextStyle.textFont13W400.copyWith(
                    color: AppColorPath.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            AppButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashBoardScreen()),
                );
              },
              content: 'Sign In',
            ),
            SizedBox(height: 29),
            _buildSignUpTextWidget(context),
          ],
        ),
      ),
    );
  }

  Text _buildSignUpTextWidget(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Don’t have an account ?',
            style: AppTextStyle.textFont13W400.copyWith(
              color: AppColorPath.black,
            ),
          ),
          TextSpan(
            text: ' Sign Up',
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistrationScreen(),
                      ),
                    );
                  },
            style: AppTextStyle.textFont14W700.copyWith(
              color: AppColorPath.blue,
            ),
          ),
        ],
      ),
    );
  }
}

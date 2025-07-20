import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_image_path.dart';
import 'package:todo_app/screens/dashboard_screen.dart';
import 'package:todo_app/screens/registration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(AppImagePath.bgTopLeftCirclesImg),
          ),
          SizedBox(height: 76),
          Center(
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Image.asset(AppImagePath.manInsidePhoneImg),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 321,
            height: 51,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                    color: Color(0xff565656),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 16,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 21),
          SizedBox(
            width: 321,
            height: 51,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                    color: Color(0xff565656),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 16,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              print('taping');
            },
            child: Center(
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  color: Color(0xff50C2C9),
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashBoardScreen()),
              );
            },
            child: Container(
              width: 325,
              height: 62,
              decoration: BoxDecoration(color: Color(0xff50C2C9)),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 29),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an account ?',
                style: TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistrationScreen(),
                    ),
                  );
                },
                child: Text(
                  ' Sign Up',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Color(0xff50C2C9),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

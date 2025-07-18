import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TodoApp(),
    );
  }
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset('assets/images/shape.png'),
          ),
          SizedBox(height: 50),
          Container(
            child: Center(
              child: Image.asset('assets/images/undraw_mobile_ux_o0e1 1.png'),
            ),
          ),
          SizedBox(height: 45),
          Center(
            child: Text(
              'Gets things done with TODO',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
              ),
            ),
          ),
          SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.only(left: 48.0, right: 46.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elsit. Interdum dictum tempus, interdum at dignissim metus. Ultricies sed nunc.',
              textAlign: TextAlign.center, // Canh trái văn bản
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 92),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistrationScreen()),
              );
            },
            child: Container(
              width: 325,
              height: 62,
              decoration: BoxDecoration(color: Color(0xff50C2C9)),
              child: Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset('assets/images/shape.png'),
          ),
          SizedBox(height: 76),
          Container(
            child: Text(
              'Welcome Onboard!',
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            child: Text(
              'Let’s help you meet up your tasks!',
              style: TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 13,
                fontWeight: FontWeight.w400,
                letterSpacing: 2,
                color: Color(0xff565656),
              ),
            ),
          ),
          SizedBox(height: 49),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 325,
              height: 521,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: 'Enter your full name',
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
                  SizedBox(height: 21),
                  TextField(
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
                  SizedBox(height: 21),
                  TextField(
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
                  SizedBox(height: 21),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: 'Confirm password',
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
                  SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Container(
                      width: 325,
                      height: 62,
                      decoration: BoxDecoration(color: Color(0xff50C2C9)),
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 23),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account ?',
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },

                        child: Text(
                          ' Sign in',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                            color: Color(0xff50C2C9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

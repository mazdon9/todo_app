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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: todoApp(),
    );
  }
}

class todoApp extends StatelessWidget {
  const todoApp({super.key});

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
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum dictum tempus, interdum at dignissim metus. Ultricies sed nunc.',
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
              print('Tapping');
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
          //   Padding(
          //     padding: const EdgeInsets.only(left: 48.0, right: 46.0),
          //   ),
        ],
      ),
    );
  }
}

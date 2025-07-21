import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text_style.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  String getGreetingMessage() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(getGreetingMessage(), style: AppTextStyle.textFont12W600);
  }
}

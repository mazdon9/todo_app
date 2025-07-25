import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/screens/widgets/task_list_view_dashboard_widget.dart';
import 'package:todo_app/screens/widgets/user_info_dashboard_widget.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserInfoDashboardWidget(),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Align(
                alignment: Alignment.topRight,
                child: AppText(
                  title: _getGreetingMessage(),
                  style: AppTextStyle.textFont12W600,
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: AnimatedAnalogClock(size: 100),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 27.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: AppText(
                  title: 'Tasks List',
                  style: AppTextStyle.textFont18W600,
                ),
              ),
            ),
            SizedBox(height: 20),
            TaskListViewDashboardWidget(),
          ],
        ),
      ),
    );
  }

  String _getGreetingMessage() {
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
}

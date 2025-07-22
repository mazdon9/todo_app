import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_field.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';
import 'package:todo_app/constants/app_data.dart';
import 'package:todo_app/constants/app_image_path.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
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
                        border: Border.all(
                          color: AppColorPath.darkBlue,
                          width: 2.0,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          AppImagePath.avatarImg,
                          fit: BoxFit.cover,
                        ),
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
          ),
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
            child: AnimatedAnalogClock(
              location: 'Australia/Darwin',
              size: 100,
              backgroundColor: Color(0xff1E1E26),
              hourHandColor: Colors.lightBlueAccent,
              minuteHandColor: Colors.lightBlueAccent,
              secondHandColor: Colors.amber,
              centerDotColor: Colors.amber,
              hourDashColor: Colors.lightBlue,
              minuteDashColor: Colors.blueAccent,
            ),
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
          TaskListView(),
        ],
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

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Container(
      width: 323,
      height: 248,
      padding: const EdgeInsets.only(top: 26, left: 21),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: AppColorPath.black.withValues(alpha: 0.25),
            blurRadius: 15,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(title: 'Tasks List', style: AppTextStyle.textFont13W400),
              GestureDetector(
                onTap: () {
                  /// show dialog with textfield
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: AppText(
                          title: 'Tasks List',
                          style: AppTextStyle.textFont18W600,
                        ),
                        content: AppTextField(hintText: 'Enter your email'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: AppText(
                              title: 'Okay',
                              style: AppTextStyle.textFont13W400.copyWith(
                                color: AppColorPath.blue,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Icon(
                  Icons.add_circle_outline,
                  color: AppColorPath.darkBlue,
                  size: 24,
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          TaskListOnly(),
        ],
      ),
    );
  }
}

class TaskListOnly extends StatefulWidget {
  const TaskListOnly({super.key});

  @override
  State<TaskListOnly> createState() => _TaskListOnlyState();
}

class _TaskListOnlyState extends State<TaskListOnly> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Scrollbar(
          thumbVisibility: true,
          thickness: 4,
          radius: Radius.circular(10),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => SizedBox(height: 18),
            itemCount: AppData.tasksList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  children: [
                    // Fake checkbox
                    Container(
                      width: 18,
                      height: 18,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal, width: 2),
                        color:
                            AppData.tasksList[index].isCompleted
                                ? Colors.teal[300]
                                : Colors.transparent,
                      ),
                    ),
                    Expanded(
                      child: AppText(
                        title: AppData.tasksList[index].title,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          decoration:
                              AppData.tasksList[index].isCompleted
                                  ? TextDecoration.lineThrough
                                  : null,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

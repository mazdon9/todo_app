import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/components/app_event_changes.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';
import 'package:todo_app/constants/app_image_path.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 307,
                color: Color(0xff50C2C9),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 128, bottom: 39),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xff2B8E94),
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
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(AppImagePath.bgTopLeftCirclesImg),
              ),
            ],
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Align(alignment: Alignment.topRight, child: Greeting()),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: AnimatedAnalogClock(
              // location: 'Australia/Darwin',
              size: 100,
              // backgroundColor: Color(0xff1E1E26),
              // hourHandColor: Colors.lightBlueAccent,
              // minuteHandColor: Colors.lightBlueAccent,
              // secondHandColor: Colors.amber,
              // centerDotColor: Colors.amber,
              // hourDashColor: Colors.lightBlue,
              // minuteDashColor: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 24),
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
}

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 323,
      height: 248,
      padding: const EdgeInsets.only(top: 26, left: 21, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: AppText(
                  title: 'Tasks List',
                  style: AppTextStyle.textFont13W400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Color(0xff2D8F95),
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 29),
          TaskListOnly(),
        ],
      ),
    );
  }
}

class TaskListOnly extends StatelessWidget {
  final List<String> tasks = [
    "Cook Rice and Chicken at 10 am",
    "Learn Reactjs at 12 pm",
    "Have Launch  at 1pm",
    "Learn HTML and CSS at 3pm",
    "Have Dinner at 8pm",
  ];
  TaskListOnly({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 34),
        child: Scrollbar(
          thumbVisibility: true,
          thickness: 4,
          radius: Radius.circular(10),
          child: ListView.builder(
            padding: EdgeInsets.only(right: 0),
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Row(
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal, width: 2),
                        color:
                            index == 0 ? Colors.teal[300] : Colors.transparent,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        tasks[index],
                        style: TextStyle(fontSize: 15, color: Colors.black87),
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

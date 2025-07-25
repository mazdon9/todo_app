import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/constants/app_data.dart';

class TaskListOnlyDashboardWidget extends StatefulWidget {
  const TaskListOnlyDashboardWidget({super.key});

  @override
  State<TaskListOnlyDashboardWidget> createState() =>
      _TaskListOnlyDashboardWidgetState();
}

class _TaskListOnlyDashboardWidgetState
    extends State<TaskListOnlyDashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 20),
      child: Scrollbar(
        thickness: 4,
        radius: Radius.circular(10),
        child: ListView.separated(
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) => SizedBox(height: 18),
          itemCount: AppData.tasksList.length,
          itemBuilder: (context, index) {
            return _buildCheckboxItemWidget(index);
          },
        ),
      ),
    );
  }

  Padding _buildCheckboxItemWidget(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            AppData.tasksList[index].isCompleted =
                !AppData.tasksList[index].isCompleted;
          });
        },
        child: Row(
          children: [
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
      ),
    );
  }
}

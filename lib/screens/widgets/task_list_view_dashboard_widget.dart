import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';
import 'package:todo_app/screens/widgets/add_icon_dashboard_widget.dart';
import 'package:todo_app/screens/widgets/task_list_only_dashboard_widget.dart';

class TaskListViewDashboardWidget extends StatefulWidget {
  const TaskListViewDashboardWidget({super.key});

  @override
  State<TaskListViewDashboardWidget> createState() =>
      _TaskListViewDashboardWidgetState();
}

class _TaskListViewDashboardWidgetState
    extends State<TaskListViewDashboardWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 52,
      height: (248 / 812) * size.height,
      padding: const EdgeInsets.only(top: 26, left: 21, right: 16),
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
              AddIconDashboardWidget(
                onTaskAdded: () {
                  setState(() {});
                },
              ),
            ],
          ),
          SizedBox(height: 25),
          Expanded(child: TaskListOnlyDashboardWidget()),
        ],
      ),
    );
  }
}

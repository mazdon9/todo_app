import 'package:flutter/material.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_field.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_color_path.dart';
import 'package:todo_app/constants/app_data.dart';
import 'package:todo_app/models/task.dart';

class AddIconDashboardWidget extends StatelessWidget {
  final VoidCallback onTaskAdded;

  const AddIconDashboardWidget({super.key, required this.onTaskAdded});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return IconButton(
      icon: Icon(
        Icons.add_circle_outline,
        color: AppColorPath.darkBlue,
        size: 24,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: AppText(
                title: 'Add a new task to tasklist',
                style: AppTextStyle.textFont18W600,
              ),
              content: AppTextField(
                controller: controller,
                hintText: 'Type a text to add',
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                      ),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        final newText = controller.text.trim();
                        if (newText.isNotEmpty) {
                          AppData.tasksList.add(
                            Task(title: newText, isCompleted: true),
                          );
                          Navigator.pop(context);
                          onTaskAdded();
                        }
                      },
                      child: const Text("OK"),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}

import 'package:todo_app/models/task.dart';

class AppData {
  static final List<Task> tasksList = [
    Task(title: "Cook Rice and Chicken at 10 am", isCompleted: true),
    Task(title: "Learn Reactjs at 12 pm", isCompleted: false),
    Task(title: "Have Launch  at 1pm", isCompleted: true),
    Task(title: "Learn HTML and CSS at 3pm", isCompleted: false),
    Task(title: "Have Dinner at 8pm", isCompleted: true),
  ];
}

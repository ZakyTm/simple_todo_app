import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList(
      {super.key,
      required this.taskName,
      required this.isDone,
      this.onChanged});

  final String taskName;
  final bool isDone;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Checkbox(
                  value: isDone,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                  checkColor: Colors.white),
              Text(
                taskName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: isDone ? TextDecoration.lineThrough : null,
                  decorationColor: Colors.black,
                  decorationThickness: 2.85,
                ),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_list.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['Task 1', false],
  ];

  void checkBoxChanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[50],
        appBar: AppBar(
          title: const Text('Todo App'),
          backgroundColor: Colors.blue[300],
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (BuildContext context, index) {
              return TodoList(
                  taskName: toDoList[index][0],
                  isDone: toDoList[index][1],
                  onChanged: (value) => checkBoxChanged(index));
            }),
        floatingActionButton: Row(
          children: [
            const Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(),
            )),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  toDoList.add([' ZTask ', false]);
                });
              },
              child: const Icon(Icons.add),
              backgroundColor: Colors.blue[300],
            ),
          ],
        ));
  }
}

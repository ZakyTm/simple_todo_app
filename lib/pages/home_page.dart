import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List toDoList = [
    ['Task 1', false],
    ['Task 2', false],
    ['Task 3', false],
    ['Task 4', false],
    ['Task 5', false],
    ['Task 6', false],
    ['Task 7', false],
    ['Task 8', false],
    ['Task 9', false],
    ['Task 10', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[50],
        appBar: AppBar(
          title: const Text('Todo App'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    toDoList[index][0],
                  ),
                ),
              );
            }));
  }
}

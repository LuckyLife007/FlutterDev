import 'package:flutter/material.dart';
import 'package:todo_app/models/todos_model.dart';
import 'package:todo_app/screens/add_todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LuckyLife ToDo App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddTodoScreen()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Pending Todos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: Todo.todos.length,
                itemBuilder: (context, int index) {
                  return _todoCard(Todo.todos[index]);
                })
          ],
        ),
      ),
    );
  }
}

Card _todoCard(Todo todo) {
  return Card(
    margin: const EdgeInsets.only(bottom: 8.0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '#${todo.id}: ${todo.task}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add_task)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.cancel))
            ],
          ),
        ],
      ),
    ),
  );
}

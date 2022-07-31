import 'package:data_passing/todo.dart';
import 'package:flutter/material.dart';

import 'details_screen.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailsScreen(
                    received: todos[index].title,
                  );
                },
              ),
            );
          },
          title: Text(todos[index].title),
          subtitle: Text(todos[index].description),
        ),
      ),
    );
  }
}

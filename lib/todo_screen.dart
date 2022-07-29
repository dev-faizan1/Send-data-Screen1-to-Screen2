import 'package:data_passing/details_screen.dart';
import 'package:data_passing/todo.dart';
import 'package:flutter/material.dart';


class TodosScreen extends StatelessWidget {
   const TodosScreen({Key? key,   this.todos}) : super(key: key);

  final List<Todo>? todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos?.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos![index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos![index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

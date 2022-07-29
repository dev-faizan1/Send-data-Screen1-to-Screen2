import 'package:data_passing/todo.dart';
import 'package:data_passing/todo_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      title: 'Passing Data',
      home: TodosScreen(
        todos: List.generate(
          20,
          (i) =>  Todo(
           title: 'Todo $i',
           description: 'Description of $i',
          ),
        ),
      ),
    ),
  );
}


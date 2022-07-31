import 'package:data_passing/todo.dart';
import 'package:data_passing/todo_screen.dart';
import 'package:flutter/material.dart';


final generatedTodos = List.generate(
  20,
  (i) => Todo(
    title: 'Title of Todo $i',
    description: 'Description of Todo $i'
  ),
);
void main() {
  runApp(
    MaterialApp(
      title: 'Passing Data',
      home: Scaffold(
        body: TodoScreen(  //Navigating to todo screen and passing data because
        //  Todo Screen requires todo parameter
          todos: generatedTodos,
        ),
      ),
    ),
  );
}

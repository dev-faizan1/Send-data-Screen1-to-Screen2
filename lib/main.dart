
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Learning value passing',
      theme: ThemeData.dark(),
      color: Colors.amberAccent.shade400,
      home: HomePage(),
    ),
  );
}

import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key, this.name, this.age}) : super(key: key);

  final String? name;
  final int? age;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This Screen receiving data from screen 1'),
            Text('${widget.name}''---''${widget.age}'),
          ],
        ),
      ),
    );
  }
}

import 'package:data_passing/screen_2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Screen2(
                name: 'Faizan',
                age: 22,
              ),
            ),
          ),
          child: const Text('navigate and send text'),
        ),
      ),
    );
  }
}

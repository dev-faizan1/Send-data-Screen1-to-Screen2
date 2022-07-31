import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.received}) : super(key: key);

  final String received;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(received),
      ),
    );
  }
}

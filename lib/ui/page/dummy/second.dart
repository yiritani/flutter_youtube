import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
      ),
      body: const Center(
        child: Text('Second'),
      ),
    );
  }
}

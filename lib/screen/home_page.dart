import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  const HomePage(Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
        // leading: const Icon(Icons.menu),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message),
          )
        ],
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.green,
        padding: const EdgeInsets.only(top: 10, right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'widgets/my_containers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade800,
        title: const Text(
          "Letter M",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: MyContainers().createListOfContainers(6),
            ),
            MyContainers().createContainer(),
            MyContainers().createContainer(),
            Column(
              children: MyContainers().createListOfContainers(5),
            ),
            MyContainers().createContainer(),
            MyContainers().createContainer(),
            Column(
              children: MyContainers().createListOfContainers(6),
            ),
          ],
        ),
      ),
    );
  }
}

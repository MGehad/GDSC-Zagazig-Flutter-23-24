import 'package:first_task/views/second_view.dart';
import 'package:flutter/material.dart';
import 'views/my_home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MyHomeView.id: (context) => const MyHomeView(),
        SecondView.id: (context) => const SecondView()
      },
      theme: ThemeData(useMaterial3: true),
      initialRoute: MyHomeView.id,
    );
  }
}

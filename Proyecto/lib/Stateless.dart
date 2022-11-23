import 'package:flutter/material.dart';
import 'package:proyecto/Notas.dart';

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Wall',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistroAcd(),
    );
  }
}

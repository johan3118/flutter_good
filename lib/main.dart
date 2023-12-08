import 'package:flutter/material.dart';
import 'package:movile_dev/layouts.dart';
import 'package:movile_dev/landing.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tarea1',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Layouts(),
              Landing(),
            ],
          ),
        ),
      ),
    );
  }
}

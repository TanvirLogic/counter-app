import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';
import 'counter_inherited_widget.dart';
import 'counter_notifier.dart';

void main() {
  runApp(CrudApp());
}

class CrudApp extends StatefulWidget {
  const CrudApp({super.key});

  @override
  State<CrudApp> createState() => _CrudAppState();
}

class _CrudAppState extends State<CrudApp> {
  @override
  Widget build(BuildContext context) {
    return CounterInheritedWidget(
      counterNotifier: CounterNotifier(),
      child: MaterialApp(
        title: 'Crud App',
        theme: ThemeData(colorSchemeSeed: Colors.blue),
        home: HomeScreen(),
      ),

    );
  }
}
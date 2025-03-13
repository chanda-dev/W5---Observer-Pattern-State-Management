import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:observer_pattern_state_management/EXERCISE-2/color_counters.dart';
import 'package:observer_pattern_state_management/EXERCISE-2/color_tab.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ColorCounters(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('My app build');
    return MaterialApp(
      home: Home(),
    );
  }
}

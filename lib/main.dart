import 'package:flutter/material.dart';
import 'package:words_of_affirmachine/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red[100],
        colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.red,
        ).copyWith(secondary: Colors.red[300],),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}


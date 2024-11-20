import 'package:flutter/material.dart';
import 'package:words_of_affirmachine/screens/login.dart';

import 'package:pbp_django_auth/pbp_django_auth.dart'; 
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Words of Affir-MACHINE',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.red[100],
          colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.red,
          ).copyWith(secondary: Colors.red[300],),
          useMaterial3: true,
        ),
        home: const LoginPage(),
      ),
    ); 
  }
}


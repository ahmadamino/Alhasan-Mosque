import 'package:flutter/material.dart';

import 'features/auth/presentation/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
       '/':(context) => LoginScreen(),
      },
    );
  }
}

import 'package:alhasen_mosque/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentation/pages/login_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();      // مشان الربط مع الباير بيز
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
       '/':(context) => Auth(),
        'loginScreen':(context)=> const LoginScreen(),

      },
    );
  }
}

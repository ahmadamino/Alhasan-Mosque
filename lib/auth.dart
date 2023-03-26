import 'package:alhasen_mosque/features/auth/presentation/pages/Home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentation/pages/login_screen.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),       //مشان انصت للتغييرات اللي عم بتصير عالفاير بيز
        builder: ((context,snapShot){
          if (snapShot.hasData){         //مشان تفحص اذا المستخدم مسجل الدخول من قبل
            return HomeScreen();         //اذا مسجل دخول بدخلني على صفحة ال هوم
          } else {
            return LoginScreen();
          }
        }),
      ),
    );
  }
}
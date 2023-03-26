import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text
            .trim()); //trim مشان يعطي الفورمات الصحيحة بدون علامات الاقباس
  }

  void openSignupScreen() {
    Navigator.of(context).pushReplacementNamed('signupScreen');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose(); //مشان يعطل الكونترولر اذا ما عم بستخدم
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image center
              Image.asset(
                'images/sign_in.png',
                height: 150,
              ),
              SizedBox(
                height: 20,
              ),
              //Text
              Text(
                'Alhasan Ben Ali',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(2),
                      border: InputBorder.none,
                      hintText: 'phone number',
                      icon: Icon(Icons.phone_android_outlined),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(2),
                      border: InputBorder.none,
                      hintText: 'password',
                      icon: Icon(Icons.password),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,
                ),
                child: GestureDetector(
                  //مشان اخلي الزر يكبس
                  onTap: signIn,
                  child: Container(
                    padding: EdgeInsets.all(10), //لتكبير الزر
                    decoration: BoxDecoration(
                      color: Colors.amber[900],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      // مشان تخلي الزر متل اللي فوقه
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

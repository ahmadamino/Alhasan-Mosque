import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(2),
                      border: InputBorder.none,
                      hintText: 'phone number',
                      icon: Icon(Icons.phone_android_outlined),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(2),
                      border: InputBorder.none,
                      hintText: 'password',
                      icon: Icon(Icons.password),
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

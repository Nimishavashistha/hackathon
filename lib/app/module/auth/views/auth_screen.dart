import 'package:flutter/material.dart';
import 'package:hackathon/app/module/auth/views/pages/auth_form.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E6E6),
      body: Stack(
        children: [
          Container(
            height: 410,
            width: 430,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            )),
          ),
          AuthForm()
        ],
      ),
    );
  }
}

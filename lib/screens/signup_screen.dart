import 'package:doctorsapp/reusable_widgets/reusable_widget.dart';
import 'package:doctorsapp/screens/home_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
    final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
   final TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Sign Up",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 153, 46, 46),
      child:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
        child:  Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
             reusableTextField("Enter UserName", Icons.person_outline, false,
              _userNameTextController),
              const SizedBox(
                height: 20,
              ), reusableTextField("Enter Email Id", Icons.person_outline, false,
              _emailTextController),
              const SizedBox(
                height: 20,
              ), reusableTextField("Enter Password", Icons.lock_outline, false,
              _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, false, () {
                FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                email: _emailTextController.text,
                password: _passwordTextController.text)
                .then((value) {
                  print("Created New Account");
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                });
                
              })
          ],),
        ),
      ),
      ),
    );
  }
}
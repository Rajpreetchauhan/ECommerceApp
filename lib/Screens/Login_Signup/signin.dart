import 'package:flutter/material.dart';

import 'Components/Login_signup_button.dart';
import 'Components/user_data_textfield.dart';
import 'Signup.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33907C),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Text(
                "Welcome to tadly",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, bottom: 20),
              child: Text(
                "Login to your account",
                style: TextStyle(color: Colors.white),
              ),
            ),
            userdatatextfield(
              hinttext: "Email/Mobile Number",
            ),
            userdatatextfield(
              hinttext: "Password",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 37, vertical: 10),
              child: Loginsignupbutton(
                textofbutton: "Login",
                onpressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "Forgot your password?",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return signup();
                        }));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

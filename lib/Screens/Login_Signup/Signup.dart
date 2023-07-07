import 'package:flutter/material.dart';

import '../Product_home_page/Product_home_page.dart';
import 'Components/Login_signup_button.dart';
import 'Components/user_data_textfield.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33907C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Welcome to tadly",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "Signup to your account",
                style: TextStyle(color: Colors.white),
              ),
            ),
            userdatatextfield(
              hinttext: "FirstName",
            ),
            userdatatextfield(
              hinttext: "Last Name",
            ),
            userdatatextfield(
              hinttext: "Email ID/Phone Number",
            ),
            userdatatextfield(
              hinttext: "Password",
            ),
            userdatatextfield(
              hinttext: "Re-enter Password",
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Loginsignupbutton(
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Productpage();
                  }));
                },
                textofbutton: "Create",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign in",
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

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../Login_Signup/Components/Login_signup_button.dart';

class optpage extends StatefulWidget {
  @override
  State<optpage> createState() => _optpageState();
}

class _optpageState extends State<optpage> {
  TextEditingController textEditingController = TextEditingController();

  var defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white, width: 1))));

  @override
  void initState() {
    textEditingController.text = "+91";
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33907C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Phone Verification",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  "Enter your OTP code here",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Pinput(
                        defaultPinTheme: defaultPinTheme,
                        length: 6,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 40),
                child: Text(
                  textAlign: TextAlign.center,
                  "Didn't you recieved any code? \n Resend new code",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Loginsignupbutton(
                  textofbutton: "Verify",
                  onpressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

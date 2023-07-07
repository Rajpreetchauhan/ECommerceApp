import 'package:flutter/material.dart';

import '../Login_Signup/Components/Login_signup_button.dart';

class Phonenumberenter extends StatefulWidget {
  @override
  State<Phonenumberenter> createState() => _PhonenumberenterState();
}

class _PhonenumberenterState extends State<Phonenumberenter> {
  TextEditingController textEditingController = TextEditingController();

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Verify your phone number",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                "We have sent you an SMS with code to \n enter number",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xff33907C)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                        controller: textEditingController,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Expanded(
                        child: TextField(
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                      decoration: InputDecoration(border: InputBorder.none),
                    ))
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                "Or Login With Social network",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Loginsignupbutton(
              textofbutton: "Next",
              onpressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

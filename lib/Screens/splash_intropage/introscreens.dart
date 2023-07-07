import 'package:ecommerceapp/Screens/Login_Signup/signin.dart';
import 'package:flutter/material.dart';

import 'Introscreen_class.dart';

class Intropage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Intropage(
        imagestring: "images/Screenshot 2023-05-06 125521.png",
        textstring: "Empowering Artisans, \n Farmers & Micro Business",
        buttontextstring: "Next",
        onpressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Intropage2();
          }));
        });
  }
}

class Intropage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Intropage(
      imagestring: "images/Screenshot 2023-05-07 074120.png",
      textstring: "Connecting NGOs & Social \n Enterprises with Communities",
      buttontextstring: "Next",
      onpressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Intropage3();
        }));
      },
    );
  }
}

class Intropage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Intropage(
      imagestring: "images/Screenshot 2023-05-07 074142.png",
      textstring: "Donate, Invest & Support \n Infrastructure projects",
      buttontextstring: "Finish",
      onpressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Signin();
        }));
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Screens/Checkout/SubScreens/Mycart/Mycart.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff33907C),
      )),
      home: Mycart(),
    );
  }
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(
      Duration(seconds: 3),
      () {},
    );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return Mycart();
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff33907C),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "images/Screenshot 2023-05-06 072824.png",
              height: 150,
              width: 150,
            ),
            Text("Tradly",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ))
          ]),
        ));
  }
}

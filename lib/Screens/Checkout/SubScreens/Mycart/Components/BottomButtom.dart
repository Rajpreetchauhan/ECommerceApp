import 'package:flutter/material.dart';

import '../../../../splash_intropage/Components/IntroPageButton.dart';

class BottomButtom extends StatelessWidget {
  const BottomButtom({super.key, required this.lbOnpressed});
  final void Function()? lbOnpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Container(
        child: ItroPageButton(
          bHeight: 60,
          onpressed: lbOnpressed,
          buttontextstring: "Coninue to Payment",
        ),
      ),
    );
  }
}

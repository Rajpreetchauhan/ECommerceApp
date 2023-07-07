import 'package:flutter/material.dart';

import 'Imagecontainer.dart';
import 'Stackimagecontainer.dart';

class Introlist extends StatelessWidget {
  const Introlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Stackimagecontainer(),
            Imagecontainer(containerimage: "images/download (1).jpeg"),
            Imagecontainer(containerimage: "images/download (1).jpeg"),
          ],
        ),
      ),
    );
  }
}

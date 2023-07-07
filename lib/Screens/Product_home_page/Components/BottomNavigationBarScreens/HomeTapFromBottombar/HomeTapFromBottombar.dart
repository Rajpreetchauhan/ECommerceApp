import 'package:flutter/material.dart';

import 'Components/Gridviewpge.dart';
import 'Components/Homeappbar.dart';
import 'Components/IntrolistIntrolist.dart';
import 'Components/Productlistwithprice.dart';
import 'Components/Seeallrow.dart';
import 'Components/Storepages.dart';

class HomeTapFromBottombar extends StatelessWidget {
  const HomeTapFromBottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Homeappbar(titletext: "Groceries"),
        Expanded(
          child: ListView(children: [
            const Introlist(),
            Gridviewpge(),
            Seeallrow(
              rowbuttontext: "See All",
              rowtext: "New Product",
            ),
            Productlistwithprice(),
            Seeallrow(
              rowbuttontext: "See All",
              rowtext: "Popular Product",
            ),
            Productlistwithprice(),
            Storepages()
          ]),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../../Models/Models.dart';
import 'BottomSeeallrow.dart';
import 'Storecontainer.dart';

class Storepages extends StatelessWidget {
  List<StorecontainerModel> Storecontainerlist = [
    StorecontainerModel(
        storeimage: "images/Brown-eggs.webp", storename: "Tradly Store"),
    StorecontainerModel(
        storeimage: "images/Brown-eggs.webp", storename: "Tradly Store"),
    StorecontainerModel(
        storeimage: "images/Brown-eggs.webp", storename: "Tradly Store"),
    StorecontainerModel(
        storeimage: "images/Brown-eggs.webp", storename: "Tradly Store"),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 600,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Color(0xff33907C),
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
              ))
            ],
          ),
        ),
        BottomSeeallrow(
          rowbuttontext: "See All",
          rowtext: "Store to follow",
        ),
        Padding(
          padding: EdgeInsets.only(top: 100, left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: 700,
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: Storecontainerlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Storecontainer(
                    storecolor: Colors.white,
                    storeimage: "images/Brown-eggs.webp",
                    Storename: "Tradly Store",
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}

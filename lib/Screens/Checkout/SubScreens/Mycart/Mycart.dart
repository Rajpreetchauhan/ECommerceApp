import 'package:ecommerceapp/Controllers/AppController.dart';
import 'package:ecommerceapp/Models/Models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Constants/Constants.dart';
import '../../../Product_home_page/Components/BottomNavigationBarScreens/HomeTapFromBottombar/Components/BottomSeeallrow.dart';
import '../AddAdress/AddAdress.dart';
import 'Components/BottomButtom.dart';

class Mycart extends StatelessWidget {
  Appcontroller randomcontroller = Get.put(Appcontroller());

  final TextStyle style1 =
      const TextStyle(color: Color(0xff4F4F4F), fontSize: 18);
  final TextStyle style2 = const TextStyle(color: Colors.black, fontSize: 17);
  final TextStyle style3 = const TextStyle(
      color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold);

  locationfunction() {
    if (randomcontroller.Adress.value.location == "") {
      return TextButton(
          onPressed: () {
            Get.to(() => AddAdress());
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return AddAdress();
            // }));
          },
          child: Text(
            "+ Add New Address",
            style: style1,
          ));
    } else {
      Obx(() {
        AdressModel Item = randomcontroller.Adress.value;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Deliver to ${Item.location},${Item.zipcode}",
                        softWrap: false,
                        style:
                            TextStyle(color: Color(0xff4F4F4F), fontSize: 17),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "${Item.city},${Item.state}",
                        style:
                            TextStyle(color: Color(0xff848484), fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
              const SeeAllButton(
                rowbuttontext: "change",
              )
            ],
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F8FE),
      appBar: appBarStyle,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Obx(() => locationfunction()),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: 130,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    "images/istockphoto-589415708-612x612.jpg",
                    height: 102,
                    width: 102,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Coca Cola",
                      style: style1,
                    ),
                    Row(
                      children: const [
                        Text(
                          "\$25",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff33907C)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "\$50 50% off ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff848484)),
                        ),
                      ],
                    ),
                    const Text(
                      "Qty : 1",
                      style: TextStyle(color: Color(0xff4F4F4F)),
                    )
                  ],
                )
              ]),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 45,
            color: Colors.white,
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Remove',
                  style: TextStyle(fontSize: 20, color: Color(0xffA7A7A7)),
                )),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Price Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price ( 1 item)",
                          style: style2,
                        ),
                        Text(
                          "\$25",
                          style: style2,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Fee",
                          style: style2,
                        ),
                        Text(
                          "Info",
                          style: style2,
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Amount",
                      style: style3,
                    ),
                    Text(
                      "\$25",
                      style: style3,
                    )
                  ]),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomButtom(lbOnpressed: () {}),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Constants/Constants.dart';
import '../../../../Controllers/AppController.dart';
import '../../../../Models/Models.dart';
import '../Mycart/Components/BottomButtom.dart';

class AddAdress extends StatelessWidget {
  Appcontroller randomcontroller = Get.put(Appcontroller());

  AddAdress({super.key});

  TextEditingController nametextEditingController = TextEditingController();
  TextEditingController phonetextEditingController = TextEditingController();
  TextEditingController adresstextEditingController = TextEditingController();
  TextEditingController citytextEditingController = TextEditingController();
  TextEditingController statetextEditingController = TextEditingController();
  TextEditingController zipcodetextEditingController = TextEditingController();

  iffunction() {
    if (nametextEditingController != "") {
      randomcontroller.Adress.value = AdressModel(
        location: nametextEditingController.text,
        zipcode: zipcodetextEditingController.text,
        city: citytextEditingController.text,
        state: statetextEditingController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarStyle,
      body: Column(children: [
        Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Color(0xffF4F5F8),
                blurRadius: 20,
                spreadRadius: 10,
                blurStyle: BlurStyle.outer)
          ]),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.my_location_rounded,
                color: Color(0xff4EA0FF),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                "Use current location",
                style: TextStyle(color: Color(0xff4EA0FF), fontSize: 20),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        NameTextField(
          name1: 'Name',
          controller: nametextEditingController,
        ),
        NameTextField(
          name1: 'Phone',
          controller: phonetextEditingController,
        ),
        NameTextField(
          name1: 'Street address',
          controller: adresstextEditingController,
        ),
        NameTextField(
          name1: 'City',
          controller: citytextEditingController,
        ),
        NameTextField(
          name1: 'State',
          controller: statetextEditingController,
        ),
        NameTextField(
          name1: 'Zipcode',
          controller: zipcodetextEditingController,
        )
      ]),
      bottomNavigationBar: BottomButtom(
        lbOnpressed: () {
          Get.back();
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return iffunction();
          // }));
        },
      ),
    );
  }
}

class NameTextField extends StatelessWidget {
  const NameTextField(
      {super.key, required this.name1, required this.controller});
  final String name1;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 5, 10, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name1,
            style: const TextStyle(color: Color(0xffA7A7A7), fontSize: 20),
          ),
          TextFormField(
            controller: controller,
            decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffDBDBDE)))),
          )
        ],
      ),
    );
  }
}

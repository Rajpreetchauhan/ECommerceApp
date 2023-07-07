import 'package:flutter/material.dart';

AppBar appBarStyle = AppBar(
    toolbarHeight: 100,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w700, fontSize: 25, color: Colors.white),
    title: Text("Whishlist"),
    leading: const BackButton(
      color: Colors.white,
    ));

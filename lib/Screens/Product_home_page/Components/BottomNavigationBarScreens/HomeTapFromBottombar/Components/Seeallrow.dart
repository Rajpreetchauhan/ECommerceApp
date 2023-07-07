import 'package:flutter/material.dart';

class Seeallrow extends StatelessWidget {
  String rowtext;
  String rowbuttontext;
  Seeallrow({required this.rowbuttontext, required this.rowtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            rowtext,
            style: const TextStyle(
                color: Color(0xff4F4F4F),
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
          SeeAllButton(rowbuttontext: rowbuttontext)
        ],
      ),
    );
  }
}

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({
    super.key,
    required this.rowbuttontext,
  });

  final String rowbuttontext;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Color(0xff33907C)),
        child: TextButton(
            onPressed: () {},
            child: Text(
              rowbuttontext,
              style: TextStyle(color: Colors.white),
            )));
  }
}

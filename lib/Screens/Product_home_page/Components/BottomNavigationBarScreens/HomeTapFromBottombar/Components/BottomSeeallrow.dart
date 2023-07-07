import 'package:flutter/material.dart';

class BottomSeeallrow extends StatelessWidget {
  String rowtext;
  String rowbuttontext;
  BottomSeeallrow({required this.rowbuttontext, required this.rowtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            rowtext,
            style: const TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
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
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xff33907C)),
        child: TextButton(
            onPressed: () {},
            child: Text(
              rowbuttontext,
              style: TextStyle(color: Colors.white),
            )));
  }
}

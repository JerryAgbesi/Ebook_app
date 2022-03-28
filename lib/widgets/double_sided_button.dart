import 'package:ebook_app/constants.dart';
import 'package:flutter/material.dart';

class DoubleSidedButton extends StatelessWidget {
  final String label;
  final Function press;
  double radius;
  DoubleSidedButton({
    required this.press,
    required this.label,
    this.radius = 29,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press;
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(radius),
                topLeft: Radius.circular(radius))),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ebook_app/constants.dart';


class bookRating extends StatelessWidget {
  final double rating;
  const bookRating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: 70,
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.star,
            color: Color(0xFFF17615),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '$rating',
            style: TextStyle(fontWeight: FontWeight.w900),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(29),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 15,
                color: kShadowColor),
          ]),
    );
  }
}

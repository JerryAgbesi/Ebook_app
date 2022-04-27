import 'package:flutter/material.dart';

import '../constants.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height * .45,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "Crushing & "),
                            TextSpan(
                                text: "Influence",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      // const Expanded(
                      //   child: Text(
                      //     "When the earth was flat and everyone wanted to"
                      //     " win the game  with the best people ... ",
                      //     maxLines: 3,
                      //     overflow: TextOverflow.ellipsis,
                      //     style: TextStyle(fontSize: 11, color: kLightBlack),
                      //   ),
                      // ),
                    ],
                  ),
                ),
               const Spacer(),
                Image.asset("assets/images/book-1.png")
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

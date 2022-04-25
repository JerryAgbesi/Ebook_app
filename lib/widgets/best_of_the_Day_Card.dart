import 'package:flutter/material.dart';

import '../constants.dart';
import 'widgets.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "New York Time Best for 11th March 2020",
                    style: TextStyle(
                      fontSize: 10,
                      color: kLightBlack,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "How to Win \nFriends and Influence",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 5),
                  const Text("Gary Venchuk",
                      style: TextStyle(color: kLightBlack)),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Row(
                        children: [
                          bookRating(rating: 4.9),
                          const SizedBox(
                            width: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "When the earth was flat and everyone wanted to"
                              " win the game  with the best people ... ",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(fontSize: 11, color: kLightBlack),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              padding:
                  EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
              height: 185,
              width: size.width * .9,
              // width: ,
              decoration: BoxDecoration(
                  color: const Color(0xFFFEAEAEA).withOpacity(.45),
                  borderRadius: BorderRadius.circular(29)),
            ),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: SizedBox(
                height: 40,
                width: size.width * .3,
                child: DoubleSidedButton(press: () {}, label: "Read"),
              )),
          Positioned(
              right: 0,
              top: 0,
              child: Image.asset(
                "assets/images/book-3.png",
                width: size.width * .37,
              ))
        ],
      ),
    );
  }
}

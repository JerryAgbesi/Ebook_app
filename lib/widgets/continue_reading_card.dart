import 'package:flutter/material.dart';
import 'package:ebook_app/screens/screens.dart';

import '../constants.dart';

class ContinueReadingCard extends StatelessWidget {
  const ContinueReadingCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(38.5),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Crushing  & Influence",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Gary Venchuk",
                              style: TextStyle(color: kLightBlack),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Chapter 7 of 10",
                                style:
                                    TextStyle(fontSize: 10, color: kLightBlack),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  const  SizedBox(
                      width: 10,
                    ),
                    const Image(
                      height: 55,
                      image: AssetImage("assets/images/book-1.png"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 7,
              width: size.width * .6,
              decoration: BoxDecoration(
                  color: kProgressIndicator,
                  borderRadius: BorderRadius.circular(7)),
            ),
          ]),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(38.5),
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: const Offset(0, 10),
                blurRadius: 33,
              )
            ]),
        height: 80,
        width: double.infinity,
      ),
    );
  }
}

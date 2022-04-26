import 'package:flutter/material.dart';
import 'package:ebook_app/constants.dart';
import 'package:ebook_app/widgets/widgets.dart';

class BookDetailsCard extends StatelessWidget {
  BookDetailsCard(
      {Key? key,
      this.liked = false,
      required this.image,
      required this.title,
      required this.auth,
      required this.rating,
      required this.detailsFunction,
      required this.readFunction})
      : super(key: key);

  bool liked;
  final String image;
  final String title;
  final String auth;
  final double rating;
  final Function readFunction;
  final Function detailsFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      color: kShadowColor,
                      blurRadius: 33)
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            right: 10,
            top: 30,
            child: IconButton(
                onPressed: () {
                  liked = !liked;
                  // setState(() {
                  //
                  // });
                },
                icon: liked
                    ? const Icon(Icons.favorite_border)
                    : const Icon(
                        Icons.favorite_border,
                      )),
          ),
          Positioned(
            top: 80,
            right: 10,
            child: bookRating(rating: rating),
          ),
          Positioned(
            top: 160,
            child: Container(
                height: 85,
                width: 202,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                              text: '$title\n',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                                text: auth,
                                style: TextStyle(color: kLightBlack)),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            detailsFunction();
                          },
                          child: Container(
                            width: 101,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: Text('Details'),
                          ),
                        ),
                        Expanded(
                          child: DoubleSidedButton(
                            label: 'Read',
                            press: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

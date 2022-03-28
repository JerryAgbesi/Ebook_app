import 'package:flutter/material.dart';
import 'package:ebook_app/widgets/widgets.dart';
import 'package:ebook_app/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool liked = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/main_page_bg.png'))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: size.height * .1,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.headline4,
                    children: const [
                  TextSpan(text: 'What are you \nreading '),
                  TextSpan(
                      text: 'today?',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BookDetailsCard(
                  image: 'assets/images/book-1.png',
                  title: 'Crushing & Influence',
                  auth: 'Gary Venchuk',
                ),
                BookDetailsCard(
                  image: 'assets/images/book-2.png',
                  title: 'Top 10 Business Hacks ',
                  auth: 'Gary Venchuk',
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class BookDetailsCard extends StatelessWidget {
  BookDetailsCard({
    Key? key,
    this.liked = false,
    required this.image,
    required this.title,
    required this.auth,
  }) : super(key: key);

  bool liked;
  final String image;
  final String title;
  final String auth;

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
                        Icons.favorite,
                        color: Colors.red,
                      )),
          ),
          const Positioned(
            top: 80,
            right: 10,
            child: bookRating(rating: 4.9),
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
                          onTap: () {},
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

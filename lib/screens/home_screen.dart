import 'package:ebook_app/widgets/book_rating.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              height: 30,
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              height: 235,
              width: 215,
              child: Stack(children: <Widget>[
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
                  'assets/images/book-1.png',
                  width: 150,
                ),
                Positioned(
                  right: 10,
                  top: 30,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          liked = !liked;
                        });
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
                  child: bookRating(rating: 4.0),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

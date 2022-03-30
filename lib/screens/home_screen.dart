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
                  rating: 4.9,
                  readFunction: () {},
                  detailsFunction: () {},
                ),
                BookDetailsCard(
                    image: 'assets/images/book-2.png',
                    title: 'Top 10 Business Hacks ',
                    auth: 'Herman Joel',
                    rating: 3.9,
                    readFunction: () {},
                    detailsFunction: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: RichText(
              text: TextSpan(
                  children: const [
                    TextSpan(
                      text: 'Best of the',
                    ),
                    TextSpan(
                      text: ' day',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: kBlackColor, fontSize: 25)),
            ),
          )
        ]),
      ),
    );
  }
}

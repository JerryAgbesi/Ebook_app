import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/main_page_bg.png'))),
      ),
    );
  }
}

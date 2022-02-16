import 'package:ebook_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart';
import 'constants.dart';

void main() {
  runApp(const EbookApp());
}

class EbookApp extends StatelessWidget {
  const EbookApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flamingo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor),
      ),
      home: const WelcomeScreen(),
    );
  }
}

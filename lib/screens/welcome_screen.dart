import 'package:flutter/material.dart';
import 'package:ebook_app/constants.dart';
import 'package:ebook_app/widgets/widgets.dart';
import 'screens.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Bitmap.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.headline3,
                    children: const [
                      TextSpan(
                        text: 'flamin',
                      ),
                      TextSpan(
                          text: 'go.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
              
                child: RoundButton(
                  label: 'Start Reading',
                  function: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

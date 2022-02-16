import 'package:flutter/material.dart';
import 'package:ebook_app/constants.dart';

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
              GestureDetector(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 30,
                        color: Color(0xFF666666).withOpacity(0.11),
                      ),
                    ],
                  ),
                  child: const Text(
                    'Start Reading',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

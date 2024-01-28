import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon/icon.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Ihsan',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('I Am '),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Student',
                    ),
                    TypewriterAnimatedText(
                      'Android Developer',
                    ),
                    TypewriterAnimatedText(
                      'Backend Developer',
                    ),
                  ],
                  repeatForever: true,
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_challenge/widgets/mybutton.dart';

void main() {
  runApp(const UiChallengeApp());
}

class UiChallengeApp extends StatelessWidget {
  const UiChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                const Text(
                  "Hey, Selena",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 16),
                ),
              ]),
            ]),
            const SizedBox(height: 60),
            Text(
              "Total Balance",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "\$5 194 382",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.w800,
                letterSpacing: 0,
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                MyButton(
                    text: "Transfer",
                    backgroundColor: Color(0xFFF2B33A),
                    textColor: Colors.black),
                SizedBox(width: 10),
                MyButton(
                    text: "Request",
                    backgroundColor: Color(0xFF181818),
                    textColor: Colors.white),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

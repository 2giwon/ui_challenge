import 'package:flutter/material.dart';
import 'package:ui_challenge/widgets/currency_card.dart';
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
        body: SingleChildScrollView(
          child: Padding(
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
              const SizedBox(height: 100),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wallets",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CurrencyCard(
                currency: "Euro",
                amount: "6 428",
                symbol: "EUR",
                icon: Icons.euro_symbol,
                isInverted: false,
                offset: Offset(0, 0),
              ),
              const CurrencyCard(
                  currency: "Dollar",
                  amount: "55 622",
                  symbol: "USD",
                  icon: Icons.attach_money_outlined,
                  isInverted: true,
                  offset: Offset(0, -25)),
              const CurrencyCard(
                  currency: "Rupee",
                  amount: "28 981",
                  symbol: "INR",
                  icon: Icons.currency_rupee_sharp,
                  isInverted: false,
                  offset: Offset(0, -50)),
            ]),
          ),
        ),
      ),
    );
  }
}

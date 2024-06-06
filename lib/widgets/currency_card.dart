import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currency, amount, symbol;
  final IconData icon;
  final Offset offset;
  final bool isInverted;

  final Color color = const Color(0xFF181818);

  const CurrencyCard({
    super.key,
    required this.currency,
    required this.amount,
    required this.symbol,
    required this.icon,
    required this.isInverted,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.elliptical(40, 40),
            bottomLeft: Radius.elliptical(40, 40),
            bottomRight: Radius.circular(20),
          ),
          color: isInverted ? Colors.white : const Color(0xFF181818),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    currency,
                    style: TextStyle(
                      color: isInverted ? color : Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? color : Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        symbol,
                        style: TextStyle(
                          color: isInverted
                              ? color
                              : Colors.white.withOpacity(0.8),
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: const Offset(-5, 15),
                    child: Icon(
                      icon,
                      color: isInverted ? color : Colors.white,
                      size: 80,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

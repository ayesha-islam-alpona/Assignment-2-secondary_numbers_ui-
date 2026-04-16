import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Secondary Numbers UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF071A1F),
      ),
      home: const SecondaryNumbersScreen(),
    );
  }
}

class SecondaryNumbersScreen extends StatelessWidget {
  const SecondaryNumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Secondary Numbers',
                style: TextStyle(
                  color: Color(0xFFACB6C8),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(height: 26),
              NumberCard(
                number: '+1 (555) 987-6543',
                label: 'Home • Added 2mo ago',
              ),
              SizedBox(height: 26),
              NumberCard(
                number: '+44 20 7123 4567',
                label: 'Work • Unverified',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NumberCard extends StatelessWidget {
  final String number;
  final String label;

  const NumberCard({
    super.key,
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      decoration: BoxDecoration(
        color: const Color(0xFF102126),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: Colors.white.withOpacity(0.08),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.18),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.45),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: Row(
          children: [
            Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF203136),
              ),
              child: const Center(
                child: Icon(
                  Icons.phone,
                  color: Color(0xFFA8B2C6),
                  size: 34,
                ),
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number,
                    style: const TextStyle(
                      color: Color(0xFFF2F5FA),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    label,
                    style: const TextStyle(
                      color: Color(0xFF8C99AF),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.edit,
              color: Color(0xFFA9B4C8),
              size: 30,
            ),
            const SizedBox(width: 28),
            const Icon(
              Icons.delete,
              color: Color(0xFFA9B4C8),
              size: 30,
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
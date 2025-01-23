import 'package:flutter/material.dart';

class OnboardingCard extends StatelessWidget {
  final String title;
  final String imagePath;
  const OnboardingCard(
      {super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

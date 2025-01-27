import 'package:coinpay_app/screens/auth/login_screen.dart';
import 'package:coinpay_app/screens/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  // Abstracted Button Builder
  Widget buildButton({
    required String label,
    required VoidCallback onPressed,
    bool filled = true,
  }) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Color(0xFF304FFE),
          ),
          backgroundColor:
              filled ? const Color(0xFF304FFE) : Colors.transparent,
          foregroundColor: filled ? Colors.white : const Color(0xFF304FFE),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image
              SvgPicture.asset(
                "assets/welcome_img.svg",
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              const SizedBox(height: 40),

              // Heading
              const Text(
                "Create your \n CoinPay Account",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Subtitle
              const Text(
                "CoinPay is a powerful tool that allows you to send and receive money from anywhere in the world",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF868889),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Buttons
              buildButton(
                label: "Sign up",
                filled: true,
                onPressed: () {
                  // Handle Sign up action
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
              ),
              const SizedBox(height: 16),
              buildButton(
                label: "Log in",
                filled: false,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

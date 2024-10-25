import 'package:ayurvedic_centre/utils/sizes/sizes.dart';
import 'package:ayurvedic_centre/view/widgets/login_button/login_button.dart';
import 'package:ayurvedic_centre/view/widgets/signup_text_formfield/signup_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Opacity(
                  opacity: 0.4,
                  child: Image.asset(
                    'assets/background.jpeg',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/logo.png',
                      width: 80,
                      height: 84,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Text(
                    'Login or Register to Book Your Appointments',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  kHeight20,
                  SignUpTextFromFiled(
                    text: "Email",
                    hintText: "Enter your email",
                    keyboardType: TextInputType.text,
                  ),
                  kHeight20,
                  SignUpTextFromFiled(
                    text: "Password",
                    hintText: "Enter password",
                    keyboardType: TextInputType.text,
                  ),
                  kHeight50,
                  LoginButtonWidget(
                    height: 50,
                    width: double.infinity,
                    text: 'Login',
                  ),
                  kHeight50,
                  kHeight50,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text:
                              'By creating or logging into an account you are agreeing with our ',
                        ),
                        TextSpan(
                          text: 'Terms and Conditions ',
                          style: TextStyle(color: Color(0xff0028FC)),
                        ),
                        TextSpan(
                          text: 'and ',
                        ),
                        TextSpan(
                          text: 'Privacy Policy. ',
                          style: TextStyle(color: Color(0xff0028FC)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

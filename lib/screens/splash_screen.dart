import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slice_ui_chatapp_figma/screens/login_screen.dart';

import '../widgets/long_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 68,
                ),
                child: Text("Get Closer To EveryOne",
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      wordSpacing: 1.2,
                    )),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36),
                child: SizedBox(
                  width: 280,
                  child: Text(
                    "Helps you to contact everyone with just easy way",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child: Image.asset(
                  "assets/images/Dayflow Best Friends.png",
                  width: 320,
                  height: 350,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              LongButton(
                buttonText: "Get Started",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((_) {
                        return const LoginScreen();
                      }),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

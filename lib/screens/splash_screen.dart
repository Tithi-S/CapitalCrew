import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/long_button.dart';
import 'login_screen.dart';

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
                height: 8.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 36),
                child: SizedBox(
                  width: 280,
                  child: Text(
                    "Helps you to contact everyone with just easy way",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      // fontFamily: ,
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
                  width: 316,
                  height: 340,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 28.0,
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

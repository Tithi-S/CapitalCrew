import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 48,
                ),
                child: Text("Get Closer To EveryOne",
                    style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      wordSpacing: 1.2,
                    )),
              ),
              const SizedBox(
                height: 12.0,
              ),
               Padding(
                padding: const EdgeInsets.only(left: 12),
                child:  SizedBox(
                  width: 280,
                  child: Text(
                    "Help you to contact everyone with just easy way",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
              height: 16.0,
              ),
              Image.asset(
              "assets/images/Dayflow Best Friday.png",
              width: 64.0,
              height: 64.0,
              fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

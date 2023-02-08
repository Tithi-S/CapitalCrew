import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slice_ui_chatapp_figma/screens/conversation_screen.dart';

import 'models/contact_model.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          iconTheme: const IconThemeData(color: Colors.grey, size: 28),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              size: 28,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        home: const SplashScreen());
  }
}

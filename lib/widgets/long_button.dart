// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
  }) : super(key: key);
  final Function() onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 46,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.purple[600],
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 45, 0, 0),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              height: 58,
              width: 58,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/profile.png",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RichText(
              text: TextSpan(
                  text: "Hello,",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                      text: " Yash Jain",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

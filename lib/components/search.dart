import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchSection extends StatefulWidget {
  @override
  _SearchSectionState createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        children: [
          Container(
            child: Expanded(
                child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                    ),
                    hintText: "search",
                    hintStyle: GoogleFonts.poppins(fontSize: 20),
                    fillColor: Colors.grey[350],
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12))),
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 18.0, left: 10, right: 18, bottom: 18),
            child: Container(
                padding: EdgeInsets.all(17),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Color(0x0c2d48).withOpacity(1),
                    borderRadius: BorderRadius.circular(18)),
                child: Image.asset(
                  "assets/settings.png",
                )),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HRList extends StatefulWidget {
  @override
  _HRListState createState() => _HRListState();
}

class _HRListState extends State<HRList> {
  bool adText = true;
  bool newText = false;
  bool trText = false;
  bool clcText = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 8, right: 8, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: InkWell(
                onTap: () {
                  setState(() {
                    adText = true;
                    newText = false;
                    trText = false;
                    clcText = false;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Adventure",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: adText ? Colors.black : Colors.grey,
                          fontWeight:
                              adText ? FontWeight.bold : FontWeight.normal),
                    ),
                    adText
                        ? Container(
                            width: 50,
                            height: 10,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        : Container(
                            height: 10,
                          ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: InkWell(
                onTap: () {
                  setState(() {
                    adText = false;
                    newText = true;
                    trText = false;
                    clcText = false;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      "New",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: newText ? Colors.black : Colors.grey[500],
                          fontWeight:
                              newText ? FontWeight.bold : FontWeight.normal),
                    ),
                    newText
                        ? Container(
                            width: 50,
                            height: 10,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        : Container(
                            height: 10,
                          ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: InkWell(
                onTap: () {
                  setState(() {
                    adText = false;
                    newText = false;
                    trText = true;
                    clcText = false;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      "Trending",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: trText ? Colors.black : Colors.grey[500],
                          fontWeight:
                              trText ? FontWeight.bold : FontWeight.normal),
                    ),
                    trText
                        ? Container(
                            width: 50,
                            height: 10,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        : Container(
                            height: 10,
                          ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              child: InkWell(
                onTap: () {
                  setState(() {
                    adText = false;
                    newText = false;
                    trText = false;
                    clcText = true;
                  });
                },
                child: Column(
                  children: [
                    Text(
                      "Culture",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: clcText ? Colors.black : Colors.grey[500],
                          fontWeight:
                              clcText ? FontWeight.bold : FontWeight.normal),
                    ),
                    clcText
                        ? Container(
                            width: 50,
                            height: 10,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)),
                          )
                        : Container(
                            height: 10,
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

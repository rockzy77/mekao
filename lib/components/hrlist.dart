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
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 18.0, left: 8, right: 8, bottom: 5),
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
                              color: adText
                                  ? Color(0x0c2d48).withOpacity(1)
                                  : Colors.grey,
                              fontWeight:
                                  adText ? FontWeight.bold : FontWeight.normal),
                        ),
                        adText
                            ? Container(
                                width: 50,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Color(0x0c2d48).withOpacity(1),
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
                              color: newText
                                  ? Color(0x0c2d48).withOpacity(1)
                                  : Colors.grey[500],
                              fontWeight: newText
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                        newText
                            ? Container(
                                width: 50,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Color(0x0c2d48).withOpacity(1),
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
                              color: trText
                                  ? Color(0x0c2d48).withOpacity(1)
                                  : Colors.grey[500],
                              fontWeight:
                                  trText ? FontWeight.bold : FontWeight.normal),
                        ),
                        trText
                            ? Container(
                                width: 50,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Color(0x0c2d48).withOpacity(1),
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
                              color: clcText
                                  ? Color(0x0c2d48).withOpacity(1)
                                  : Colors.grey[500],
                              fontWeight: clcText
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                        clcText
                            ? Container(
                                width: 50,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Color(0x0c2d48).withOpacity(1),
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
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 18),
            child: newText
                ? Row(
                    children: [
                      BLists(
                        text: "Olympic National",
                        subtext: "Forest, Washington",
                        image: "assets/national.jpg",
                      ),
                      BLists(
                        text: "Mount Kilimanjaro",
                        subtext: "Tanzania",
                        image: "assets/kili.jpg",
                      ),
                    ],
                  )
                : adText
                    ? Row(
                        children: [
                          BLists(
                            text: "Waitomo Caves",
                            subtext: "New Zealand",
                            image: "assets/walt.jpg",
                          ),
                          BLists(
                            text: "Phong Nha",
                            subtext: "Vietnam",
                            image: "assets/phong.jpg",
                          ),
                          BLists(
                            text: "Leh",
                            subtext: "India",
                            image: "assets/leh.jpg",
                          ),
                        ],
                      )
                    : trText
                        ? Row(
                            children: [
                              BLists(
                                text: "Paris",
                                subtext: "France",
                                image: "assets/paris.jpg",
                              ),
                              BLists(
                                text: "Machu Picchu",
                                subtext: "Peru",
                                image: "assets/mp.jpg",
                              ),
                              BLists(
                                text: "Colosseum",
                                subtext: "Rome",
                                image: "assets/cel.jpg",
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              BLists(
                                text: "Amsterdam",
                                subtext: "The Netherlands",
                                image: "assets/ams.jpg",
                              ),
                              BLists(
                                text: "Dublin",
                                subtext: "Ireland",
                                image: "assets/dub.jpg",
                              ),
                            ],
                          ),
          ),
        ),
      ],
    );
  }
}

class BLists extends StatelessWidget {
  final text;
  final subtext;
  final image;

  BLists({this.image, this.subtext, this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 280,
            width: 185,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                color: Color(0x212121).withOpacity(1),
                colorBlendMode: BlendMode.softLight,
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark),
                color: Color(0x0c2d48).withOpacity(1),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFFFFF).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Positioned(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Text(
                    text,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Text(
                    subtext,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              ],
            ),
            bottom: 20,
            left: 13,
          )
        ],
      ),
    );
  }
}

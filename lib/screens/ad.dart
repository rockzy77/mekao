import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mekao/screens/home.dart';

class SplashHome extends StatefulWidget {
  @override
  _SplashHomeState createState() => _SplashHomeState();
}

class _SplashHomeState extends State<SplashHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/bg.jpg",
                fit: BoxFit.cover,
                color: Color(0x212121).withOpacity(0.6),
                colorBlendMode: BlendMode.softLight,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                    child: Text(
                  "Explore the world",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 28),
                )),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 25.0, top: 20, left: 25, right: 25),
                  child: Center(
                      child: Text(
                    "Make now your time to live a good life by exploring nature",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60.0, top: 45),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0x757575).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(14),
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)),
                        child: IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            size: 35,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

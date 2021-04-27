import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mekao/components/bodylist.dart';
import 'package:mekao/components/category.dart';
import 'package:mekao/components/header.dart';
import 'package:mekao/components/hrlist.dart';
import 'package:mekao/components/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool homeIcon = true;
  bool searchIcon = false;
  bool compassIcon = false;
  bool setIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Container(
        height: 65,
        color: Colors.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home_filled),
                onPressed: () {
                  setState(() {
                    homeIcon = true;
                    searchIcon = false;
                    compassIcon = false;
                    setIcon = false;
                  });
                },
                iconSize: 28,
                color: homeIcon ? Colors.black : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    homeIcon = false;
                    searchIcon = true;
                    compassIcon = false;
                    setIcon = false;
                  });
                },
                iconSize: 28,
                color: searchIcon ? Colors.black : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.navigation),
                onPressed: () {
                  setState(() {
                    homeIcon = false;
                    searchIcon = false;
                    compassIcon = true;
                    setIcon = false;
                  });
                },
                iconSize: 28,
                color: compassIcon ? Colors.black : Colors.grey,
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  setState(() {
                    homeIcon = false;
                    searchIcon = false;
                    compassIcon = false;
                    setIcon = true;
                  });
                },
                iconSize: 28,
                color: setIcon ? Colors.black : Colors.grey,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SearchSection(),
            HRList(),
            BodyList(),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 8),
                child: Text(
                  "Category",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            Categoriess()
          ],
        ),
      ),
    );
  }
}

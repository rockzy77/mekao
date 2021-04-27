import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categoriess extends StatefulWidget {
  @override
  _CategoriessState createState() => _CategoriessState();
}

class _CategoriessState extends State<Categoriess> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CLists(
            text: "Forest",
            image: "assets/tree.png",
            function: () {},
          ),
          CLists(
            text: "Mountain",
            image: "assets/mountain.png",
            function: () {},
          ),
          CLists(
            text: "Camp",
            image: "assets/camp.png",
            function: () {},
          ),
          CLists(
            text: "Beach",
            image: "assets/beach.png",
            function: () {},
          ),
        ],
      ),
    );
  }
}

class CLists extends StatelessWidget {
  final text;
  final image;
  final void Function() function;

  CLists({this.image, this.text, this.function});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: function,
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                height: 65,
                width: 65,
                child: Image.asset(
                  image,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: GoogleFonts.poppins(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

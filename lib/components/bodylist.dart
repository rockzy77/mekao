// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class BodyList extends StatefulWidget {
//   @override
//   _BodyListState createState() => _BodyListState();
// }

// class _BodyListState extends State<BodyList> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 18.0, bottom: 18, left: 5, right: 5),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             BLists(
//               text: "Olympic National",
//               subtext: "Forest, Washington",
//               image: "assets/national.jpg",
//             ),
//             BLists(
//               text: "Mount Kilimanjaro",
//               subtext: "Tanzania",
//               image: "assets/kili.jpg",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BLists extends StatelessWidget {
//   final text;
//   final subtext;
//   final image;

//   BLists({this.image, this.subtext, this.text});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Stack(
//         children: [
//           Container(
//             height: 280,
//             width: 185,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(30),
//               child: Image.asset(
//                 image,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Positioned(
//             right: 10,
//             top: 10,
//             child: Container(
//               child: IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.bookmark),
//                 color: Color(0x0c2d48).withOpacity(1),
//               ),
//               decoration: BoxDecoration(
//                   color: Color(0xFFFFFF).withOpacity(0.5),
//                   borderRadius: BorderRadius.circular(10)),
//             ),
//           ),
//           Positioned(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 0.0),
//                   child: Text(
//                     text,
//                     style: GoogleFonts.poppins(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 0.0),
//                   child: Text(
//                     subtext,
//                     textAlign: TextAlign.start,
//                     style: GoogleFonts.poppins(color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//             bottom: 20,
//             left: 13,
//           )
//         ],
//       ),
//     );
//   }
// }

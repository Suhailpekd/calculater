// import 'package:flutter/material.dart';

// class Profile2 extends StatefulWidget {
//   Map pic;
//   Profile2({super.key, required this.pic});

//   @override
//   State<Profile2> createState() => _Profile2State();
// }

// class _Profile2State extends State<Profile2> {
//   dynamic sample() {
//     var a = widget.pic;
//     print(a);
//     return a;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: sample(),
//           builder: (context, snap) {
//             if (snap.hasData) {
//               return Column(
//                 children: [
//                   Container(
//                     width: 250,
//                     height: 250,
//                     color: Colors.amber,
//                     child:Text(snap.data['email']),
//                   ),
//                 ],
//               );
//             } else {
//               Center(child: CircularProgressIndicator());
//             }
//           }),
//     );
//   }
// }

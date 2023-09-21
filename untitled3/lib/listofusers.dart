// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';


// class Listofsusers extends StatefulWidget {
//   const Listofsusers({super.key});

//   @override
//   State<Listofsusers> createState() => _ListofsusersState();
// }

// var api3;

// class _ListofsusersState extends State<Listofsusers> {
//   Future<dynamic> apicaller() async {
//     var api2 = await get(Uri.parse("https://reqres.in/api/users?page=2"));
//     api3 = jsonDecode(api2.body)['data'];
//     print(api3);
//     return api3;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: apicaller(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//                 itemCount: snapshot.data.length,
//                 itemBuilder: (context, index) {
//                   return InkWell(
//                     onDoubleTap: () {
//                       Navigator.push(context, MaterialPageRoute(
//                         builder: (context) {
//                           var img = snapshot.data[index]['avatar'];
//                           var name1 = snapshot.data[index]['first_name'];
//                           var email2 = snapshot.data[index]["last_name"];
//                           // Map<String,String> l1 = {
//                           //   "image": img,
//                           //   "name1": name1,
//                           //   "email2": email2,
//                           // };
//                           return Profile2(pic: snapshot.data[index]);
//                         },
//                       ));
//                     },
//                     child: ListTile(
//                       leading: CircleAvatar(
//                           backgroundImage:
//                               NetworkImage(snapshot.data[index]["avatar"])),
//                       title:
//                           Text(snapshot.data[index]["first_name"].toString()),
//                       subtitle: Text(snapshot.data[index]["email"].toString()),
//                     ),
//                   );
//                 });
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }
// }

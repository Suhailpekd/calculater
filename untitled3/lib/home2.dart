import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Mywid extends StatefulWidget {
  const Mywid({super.key});

  @override
  State<Mywid> createState() => _MywidState();
}

class _MywidState extends State<Mywid> {
  Future<dynamic> apicaller3() async {
    var apicall = await get(Uri.parse("https://reqres.in/api/unknown"));
    var apicalldcd = jsonDecode(apicall.body)["data"][4]["year"];
    print(apicalldcd);
    return apicalldcd;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: apicaller3(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Container(
                  color: Colors.yellow, child: Text(snapshot.data.toString())),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

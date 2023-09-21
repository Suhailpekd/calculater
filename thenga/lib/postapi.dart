import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Myapi extends StatefulWidget {
  const Myapi({super.key});

  @override
  State<Myapi> createState() => _MyapiState();
}

class _MyapiState extends State<Myapi> {
  var user = TextEditingController();
  var user1 = TextEditingController();
  var apicall2 = "click the button";
  Future<dynamic> apicaller() async {
    var data = {"name": user.text, "job": user1.text};
    var apicall1 =
        await post(Uri.parse("https://reqres.in/api/users"), body: data);
    setState(() {
      apicall2 = jsonDecode(apicall1.body)["createdAt"];
      print(" suhail's profile created at: $apicall2");
    });
    return apicall2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: user,
                ),
                TextFormField(
                  controller: user1,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        apicaller();
                      });
                    },
                    child: Text("click")),
                Container(
                  child: Text("your profile created at: $apicall2"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

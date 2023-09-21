import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Suha extends StatefulWidget {
  const Suha({super.key});

  @override
  State<Suha> createState() => _SuhaState();
}

class _SuhaState extends State<Suha> {
  var user = TextEditingController();
  var number;

  var apicaller3;

  Future<dynamic> Apicaller() async {
    var apicaller2 = await get(Uri.parse("http://numbersapi.com/$number"));

    print(apicaller2.body);

    setState(() {
      apicaller3 = apicaller2.body;
    });
    return apicaller3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              height: 30,
              width: 100,
              child: TextFormField(
                controller: user,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = user.text;
                    print(number);
                  });
                  Apicaller();
                },
                child: Text("Click")),
            Text(apicaller3.toString()),
          ],
        ),
      ),
    );
  }
}

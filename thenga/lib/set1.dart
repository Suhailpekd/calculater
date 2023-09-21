import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Set33 extends StatefulWidget {
  const Set33({super.key});

  @override
  State<Set33> createState() => _Set33State();
}

class _Set33State extends State<Set33> {
  var user = TextEditingController();
  var user1 = TextEditingController();

  Future<void> apicaller() async {
    var data = {"email": user.text, "password": user1.text};

    var apicaller1 =
        await post(Uri.parse("https://reqres.in/api/register"), body: data);

    var apicaller2 = jsonDecode(apicaller1.body);
    print(apicaller2);
    print(apicaller1);
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
                      apicaller();
                    },
                    child: Text("click")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

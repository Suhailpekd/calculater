import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Usrids extends StatefulWidget {
  const Usrids({super.key});

  @override
  State<Usrids> createState() => _UsridsState();
}

class _UsridsState extends State<Usrids> {
  var apicall2;
  Future<dynamic> apicaller() async {
    var apicall = await get(Uri.parse("https://reqres.in/api/users/2"));
    setState(() {
      apicall2 = jsonDecode(apicall.body)['data'];
    });
    print(apicall2);
    // imagedata1 = apicall2["data"];apicall[0]['nm']

    return apicall2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (apicall2 == null) Text('please click'),
          if (apicall2 != null)
            Column(
              children: [
                Text(apicall2!['email'].toString()),
                Text(apicall2!['id'].toString()),
                Text(apicall2!['first_name'].toString()),
              ],
            ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  apicaller();
                },
                child: Text("View", style: TextStyle(color: Colors.black))),
          ),
        ],
      ),
    );
  }
}

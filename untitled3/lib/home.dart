import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

abstract class MyWidget extends StatefulWidget {
  Mywidget2();

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Future<void> getData() async {
    var response =
        await get(Uri.parse('https://dog.ceo/api/breeds/image/random'));

    var res = jsonDecode(response.body);
    print(res);
    print(res['message']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  getData();
                },
                child: Text("Data")),
          ),
          Container()
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Mywid extends StatefulWidget {
  const Mywid({super.key});

  @override
  State<Mywid> createState() => _MywidState();
}

class _MywidState extends State<Mywid> {
  
  Future<dynamic> one() async {
    var apicaller =
        await get(Uri.parse("https://dog.ceo/api/breeds/image/random"));

    var decodjson = jsonDecode(apicaller.body);
    print(decodjson);

    return decodjson;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: one(),
          builder: (context, snp) {
            if (snp.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ElevatedButton(
                      child: Text('Click'),
                      onPressed: () {
                        setState(() {
                          one();
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 180,
                    child: Image.network(snp.data['message']),
                  ),
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}

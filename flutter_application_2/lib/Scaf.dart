import 'package:flutter/material.dart';
import 'package:flutter_application_2/provi.dart';
import 'package:provider/provider.dart';

class Set44 extends StatefulWidget {
  const Set44({super.key});

  @override
  State<Set44> createState() => _Set44State();
}

class _Set44State extends State<Set44> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    var proride = Provider.of<Suha>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                child: Text(
              "${proride.changcount22}",
              style: TextStyle(fontSize: 34),
            )),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  proride.incriment();
                },
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}

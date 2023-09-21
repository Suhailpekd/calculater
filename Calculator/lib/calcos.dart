import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.grey,
                  ),
                  height: 80,
                  width: 320,
                  child: Center(
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(left: 34),
                        child: Text(
                          "Softronics",
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                      ),
                      leading: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        width: 54,
                        height: 54,
                      ),
                    ),
                  )),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 30, top: 20, left: 30),
                          child: Icon(
                            Icons.location_on_sharp,
                            size: 34,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: (20)),
                          child: Text(
                            "Edappal",
                            style: TextStyle(fontSize: 27, color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(right: 30, top: 20, left: 30),
                      child: Icon(
                        Icons.email,
                        size: 34,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: (20)),
                      child: Text(
                        "Alamansystems7@gmail.com",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(right: 30, top: 20, left: 30),
                      child: Icon(
                        Icons.phone,
                        size: 34,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: (20), right: 23),
                      child: Text(
                        "9567972330",
                        style: TextStyle(fontSize: 27, color: Colors.grey),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.call,
                      ),
                    )
                  ],
                ),
              ],
            ),
            // Container(height: 360,width: 360,color: Colors.cyan,child: CircleAvatar(child: Image.asset('asset/images/images.jpg',fit: Box)),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Wts()));
                    },
                    child: Text("<BACK")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => (),
                          ));
                    },
                    child: Text("NEXT>")),
              ],
            )
          ],
        ),
      ),
    );
  }
}



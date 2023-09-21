import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Suha1 extends StatefulWidget {
  const Suha1({super.key});

  @override
  State<Suha1> createState() => _Suha1State();
}

class _Suha1State extends State<Suha1> {
  // var user=TextEditingController();
  // var lis=[];
  // var user2=TextEditingController();
  // void ddd(){
  //   setState(() {
  //     lis.add(user.text);
  //     print('$lis');
  //     share();
  //   });

  // }
  // void editing(int inde, String Sub ){
  //   setState(() {
  //     lis[inde]=Sub;
  //     user2.clear();
  //   });
  //   print(lis);
  // }
  Future<void> share() async {
    final sss = await SharedPreferences.getInstance();

    // sss.setString("name", lis.toString());

    var bbb = sss.getString("name");
    print('$bbb');

    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Center(
        child: Container(
            height: 1500,
            width: 335,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 7)),
            child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                      children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 24),
                      child: Text("Registration Form",
                          style: TextStyle(fontSize: 29)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 2,
                                color: Colors.grey,
                                style: BorderStyle.values.last,)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "User Name",

                                  )),
                          ),
                            // controller: user,
                          ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                              style: BorderStyle.values.last,)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Password",

                                )),
                          ),
                          // controller: user,
                        ),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                              style: BorderStyle.values.last,)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Again password",

                                )),
                          ),
                          // controller: user,
                        ),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                              style: BorderStyle.values.last,)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Emeil",

                                )),
                          ),
                          // controller: user,
                        ),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                              style: BorderStyle.values.last,)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Phone number",

                                )),
                          ),
                          // controller: user,
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        // ddd();
                      },
                      child: Container(
                        width: 300,
                        height: 45,
                        color: Colors.orange,
                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // Expanded(
                    //         child: ListView.builder(
                    //           itemCount: lis.length,
                    //           itemBuilder: (context, index) {
                    //             return Card(child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: Row(
                    //                 mainAxisAlignment: MainAxisAlignment
                    //                     .spaceBetween,
                    //                 children: [
                    //                   Text(lis[index]),
                    //                   Padding(
                    //                     padding: const EdgeInsets.only(
                    //                         left: 80, right: 7),
                    //                     child: ElevatedButton(onPressed: () {
                    //                       showDialog(context: context,
                    //                         builder: (context) {
                    //                           return AlertDialog(
                    //                             title: Text("edit text,"),
                    //                             content: TextFormField(
                    //                               controller: user2,
                    //
                    //                             ),
                    //                             actions: [
                    //                               ElevatedButton(
                    //                                   onPressed: () {
                    //                                     Navigator.of(context)
                    //                                         .pop();
                    //                                     editing(index,
                    //                                         user2.text);
                    //                                   },
                    //                                   child: Text("submit"))
                    //                             ],
                    //                           );
                    //                         },);
                    //                     }, child: Text("edit")),
                    //                   ),
                    //                   ElevatedButton(onPressed: () {
                    //                     setState(() {
                    //                       lis.removeAt(index);
                    //                     });
                    //                   }, child: Text("delete"))
                    //                 ],
                    //               ),
                    //             )
                    //
                    //             );
                    //           },
                    //
                    //         ),
                    //       )
                    //
                    //     ])
                    // )
                  ]),
                ))),
      )),
    ));
  }
}

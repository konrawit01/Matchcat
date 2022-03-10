import 'package:flutter/material.dart';
import 'flipcardgame.dart';
import 'data.dart';

  class HomePage extends StatefulWidget {
    @override
    State<HomePage> createState() => _HomePageState();
  }
   
  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('MatchCat'),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent),
            body: ListView.builder(
                  itemCount: 3, //
                  itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 90,
                              width: double.infinity,
                              decoration: BoxDecoration(color: Colors.green[200],
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius:4,
                                  color: Colors.black45,
                                  spreadRadius: 0.5,
                                  offset: Offset(3,4))
                                ]),
                            ),
                            Container(
                              height: 90,
                              width: double.infinity,
                              decoration: BoxDecoration(color: Colors.green[200],
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius:4,
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  offset: Offset(3,4,))
                                ]),
                            ),   
                          ],
                        ),
                      );
                    },
                  ),
                );
              }
            }

// list<Widget> genratester(int no) {
  //List<Widget> icons = [];
  //for (int i  = 0; i < no; i++){
    //_icons.insert(
     // i,
     // Icon(
        //Icons.star,
        //color: Colors.yellow,
     // )); 
 //}
 //return _icons;
//}
// class Details {
//   String name;
//   Color primarycolor;
//   Color secomdarycolor;
//   Widget goto;
//   int noOfstar;
//   Details({this.name, this.primarycolor, this.secomdarycolor});
// }

// List<Details> _list = [
//   Details(
//       name: "EASY",
//       primarycolor: Colors.green,
//       secomdarycolor: Colors.green[200]
//   ),
//   Details(
//       name: "MEDIUM",
//       primarycolor: Colors.orange,
//       secomdarycolor: Colors.orange[300]
//   ),
//   Details(
//       name: "HARD",
//       primarycolor: Colors.red,
//       secomdarycolor: Colors.red[300],
//   ),
// ]
                                                              
                    
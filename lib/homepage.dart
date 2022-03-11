import 'package:flutter/material.dart';
import 'flipcardgame.dart';
import 'data.dart';

  class HomePage extends StatefulWidget {
    const HomePage({Key? key}): super(key: key);
    
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (BuildContext context) => _list[index].goto,
                    ));
              },
          child: ListView.builder(
            itemCount: _list.length, //
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: _list[index].primarycolor,//
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.black45,
                                  spreadRadius: 0.5,
                                  offset: Offset(3, 4))
                            ]),
                      ),
                      Container(
                        height: 90,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: _list[index].secomdarycolor,//
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.black12,
                                  spreadRadius: 0.3,
                                  offset: Offset(
                                    5,
                                    3,
                                  ))
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              _list[index].name,//
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black26,
                                      blurRadius: 2,
                                      offset: Offset(1, 2),
                                    ),
                                    Shadow(
                                        color: Colors.green,
                                        blurRadius: 2,
                                        offset: Offset(0.5, 2))
                                  ]),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: genratester(_list[index].onofstar),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
              );
            },
          ),
        ),
      ),
    );
  }


  List<Widget> genratester(int no) {
    List<Widget> icons = [];
      for (int i  = 0; i < no; i++){
        _icons.insert(
          i,
          Icon(
            Icons.star,
            color: Colors.yellow,
              )); 
        }
        return _icons;
    }
}


class ListDetails {
   String name;
   Color primarycolor;
   Color secomdarycolor;
   int onofstar;
   Widget goto;

  ListDetails({
    this.name,
    this.primarycolor,
    this.secomdarycolor,
    this.onofstar,
    this.goto
  });
}




List<ListDetails> _list = [
  ListDetails(
    name: "EASY",
    primarycolor: Colors.green,
    secomdarycolor: Colors.green.shade300, 
    onofstar: 1, 
    goto : FlipCardGane(Level.Easy)
    ),
    
  ListDetails(
    name: "Medium",
    primarycolor: Colors.green,
    secomdarycolor: Colors.green.shade300,
    onofstar: 2, 
    goto: FlipCardGane(Level.Medium)),
    
  ListDetails(
    name: "Hard",
    primarycolor: Colors.green,
    secomdarycolor: Colors.green.shade300,
    onofstar: 3,
    goto: FlipCardGane(Level.Hard)
    ),

];




                                                              
                    
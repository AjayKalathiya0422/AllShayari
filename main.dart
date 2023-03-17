import 'package:allshayari/secondpage.dart';
import 'package:allshayari/settingpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: allshayari()));
}

class allshayari extends StatefulWidget {
  const allshayari({Key? key}) : super(key: key);

  @override
  State<allshayari> createState() => _allshayariState();
}

class _allshayariState extends State<allshayari> {
  List l = [
    "Alone ",
    "Attitude ",
    "Birthday ",
    "good Night ",
    "Good Morning ",
    "Motivation ",
    "Life ",
    "Broken "
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Shayari",style: TextStyle(fontFamily: "Ak")),
        elevation: 10,
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.cancel_presentation),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.favorite)),

          IconButton(onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) {
            return settingpage();
          },));
          }, icon: Icon(Icons.settings))
        ],
      ),
      body: Container(color: Colors.deepPurple,
        child: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: l.length,
          itemBuilder: (context, index) {
            return Container(
            alignment:Alignment.center,
              height: 80,
               decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.all(5),
              child: ListTile(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return secondpage(l,index);
                },));
                },
                leading: CircleAvatar(
                  backgroundImage: (AssetImage("photo/a${index+1}.jpg")),
                  radius: 30,
                ),
                title: Text("${l[index]}",style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.arrow_right,color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}

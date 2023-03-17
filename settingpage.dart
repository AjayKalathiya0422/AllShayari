import 'package:flutter/material.dart';

class settingpage extends StatefulWidget {
  const settingpage({Key? key}) : super(key: key);

  @override
  State<settingpage> createState() => _settingpageState();
}

class _settingpageState extends State<settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        elevation: 10,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(color: Colors.deepPurple,
        child: ListView(
          children: [
            ListTile( leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("Back to Home"),
            onTap: () {
            },),ListTile( leading: Icon(Icons.favorite_border),
              title: Text("Favorites"),
              subtitle: Text("Check favorite List"),
              onTap: () {
              },),ListTile( leading: Icon(Icons.star_rate),
              title: Text("Rate us"),
              subtitle: Text("Review"),
              onTap: () {
              },),ListTile( leading: Icon(Icons.share),
              title: Text("Share With Friend"),
              subtitle: Text("Back to Home"),
              onTap: () {
              },),ListTile( leading: Icon(Icons.more),
              title: Text("More App"),
              subtitle: Text("if yuo like app"),
              onTap: () {
              },),ListTile( leading: Icon(Icons.privacy_tip),
              title: Text("Privecy & Policy"),
              subtitle: Text("Read our Privacy & policy"),
              onTap: () {
              },),ListTile( leading: Icon(Icons.mobile_friendly),
              title: Text("App Version"),
              subtitle: Text("3.1"),
              onTap: () {
              },),
          ],
        ),
      ),
    );
  }
}

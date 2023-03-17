import 'package:allshayari/model.dart';
import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter_tts/flutter_tts.dart';
class secondpage extends StatefulWidget {
  List l;
  int index;

  secondpage(this.l, this.index);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  List shayari = [];
  FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.index == 0) {
      shayari = model.Alone;
    }
    else if(widget.index==1){
      shayari = model.Attitude;
    }
    else if(widget.index==2){
      shayari = model.Birthday;
    }
    else if(widget.index==3){
      shayari = model.goodNight;
    }
    else if(widget.index==4){
      shayari = model.GoodMorning;
    }
    else if(widget.index==5){
      shayari = model.Motivation;
    }
    else if(widget.index==6){
      shayari = model.Life;
    }
    else if(widget.index==7){
      shayari = model.Broken;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.l[widget.index]}"),
        elevation: 30,
        backgroundColor: Colors.deepPurple,
        actions: [IconButton(onPressed: () {

        }, icon: Icon(Icons.favorite))],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.purple),
        child: ListView.builder(
          itemCount: shayari.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.all(5),
                    child: Text("${shayari[index]}"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        )),
                    child: Row(children: [
                      Expanded(
                        child: IconButton(
                            onPressed: () {
                              FlutterClipboard.copy("${shayari[index]}")
                                  .then((value) {
                                print("copied");

                                Fluttertoast.showToast(
                                    msg: "copied",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.white,
                                    textColor: Colors.black87,
                                    fontSize: 16.0);
                              });
                            },
                            icon: Icon(Icons.copy),
                            color: Colors.white),
                      ),
                      Expanded(
                        child: IconButton(
                            onPressed: () {
                              flutterTts.speak("${shayari[widget.index]}");

                            },
                            icon: Icon(Icons.play_arrow),
                            color: Colors.white),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            FavoriteButton(
                              valueChanged: (_) {
                                return shayari[widget.index];
                              },
                            );
                          },
                          icon: Icon(Icons.favorite_border),
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            Share.share("${shayari[widget.index]}");
                          },
                          icon: Icon(Icons.share),
                          color: Colors.white,
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

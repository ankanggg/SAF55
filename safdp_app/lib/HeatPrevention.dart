import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class HeatPrevention extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Heat Prevention'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
            new Container(
              height: MediaQuery.of(context).size.height * 0.55,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              //transform: Matrix4.translationValues(0.0, -50.0, 0.0), //Acts as Negative Margin
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/UsefulInfo_HeatPrevention1.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.55,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/UsefulInfo_HeatPrevention2.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.55,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/UsefulInfo_HeatPrevention3.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.55,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/UsefulInfo_HeatPrevention4.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.55,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/UsefulInfo_HeatPrevention5.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.55,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/UsefulInfo_HeatPrevention6.jpg"),
              )
            ),
           ]
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class CnSUniformNo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Uniform Standard - No.4'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo4_1.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo4_2.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo4_3.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo4_4.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo4_5.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo4_6.jpg"),
              )
            ),
            new Container( //Linkage
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("https://www.ns.sg/nsp/wcm/connect/site/2cf8d305-bd99-46a3-80f4-a451792722af/SAF+No4+Dress+%28Edited%29.pdf?MOD=AJPERES", style: new TextStyle(fontSize: 10,))
              ),
           ]
          ),
        ),
      ),
    );
  }
}
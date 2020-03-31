import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class CnSUniformNo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Uniform Standard - No.1'),
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
                imageProvider: AssetImage("assets/CnS_UniformNo1_1.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_2.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_3.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_4.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_5.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_6.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_7.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_8.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_9.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_10.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_11.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_12.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_13.jpg"),
              )
            ),
            new Container(
              height: MediaQuery.of(context).size.height * 0.8,
              margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
              child: PhotoView(
                backgroundDecoration: BoxDecoration(color: Colors.white),
                imageProvider: AssetImage("assets/CnS_UniformNo1_14.jpg"),
              )
            ),
            new Container( //Linkage
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("https://www.ns.sg/nsp/wcm/connect/site/1f87b35d-32b2-47c1-bc4d-a95c4af677f9/NS+Portal+SAF+No.1+CAA.pdf?MOD=AJPERES", style: new TextStyle(fontSize: 10,))
              ),
           ]
          ),
        ),
      ),
    );
  }
}
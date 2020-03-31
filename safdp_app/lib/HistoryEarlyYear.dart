import 'package:flutter/material.dart';

class HistoryEarlyYear extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('History - The Early Years'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                child: Text("1819 - Beginning of colonial rule. Singapore relied on British forces to protect her from all threats.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1854 - Creation of the Singapore Volunteer Rifle Corps (SVRC), a volunteer organisation to maintain internal security.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1888 - The SVRC became the Singapore Volunteer Artillery (SVA), and its success prompted formation of other volunteer corps.", textAlign: TextAlign.justify),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1901 – SVA and other volunteer corps were consolidated into the Singapore Volunteer Corps (SVC). Army Cadet Corps, precursor of the National Cadet Corps, started.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1915 - The SVC acquitted itself extremely well in the Singapore Mutiny.", textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1922 - The SVC was renamed the Straits Settlements Volunteer Force (SSVF) to include volunteer forces from Malacca and Penang.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1934 – The Straits Settlements Royal Naval Volunteer Reserve (SSRNVR) was formed.", textAlign: TextAlign.justify)
              ),
              new Container( //Linkage
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("https://www.mindef.gov.sg/web/portal/mindef/about-us/history", style: new TextStyle(fontSize: 10,))
              ),
           ]
          ),
        ),
      ),
    );
  }
}
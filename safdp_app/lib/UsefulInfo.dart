import 'package:flutter/material.dart';

class UsefulInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Useful Information'),
      ),
      body : SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
          ),
          new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Subjected to changes", textAlign: TextAlign.justify)
          ),
        ],
        ),
      ),
    );
  }
}
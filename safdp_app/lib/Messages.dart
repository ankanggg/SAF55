import 'package:flutter/material.dart';
import 'package:safdp_app/homepage.dart';
import 'GeneralAnnouncement.dart';
import 'SafetyMessage.dart';
import 'TrainerMessage.dart';
import 'Attendence.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));
        }),
        title: Text('Messages'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/GeneralAnnoucements_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>GeneralAnnouncement()));
                  }, 
                  child: null,
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/SafetyMessage_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SafetyMessage()));
                  }, 
                  child: null,
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/TrainerMessage_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>TrainerMessage()));
                  }, 
                  child: null,
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.20,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/AttendenceTaking_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Attendence()));
                  }, 
                  child: null,
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
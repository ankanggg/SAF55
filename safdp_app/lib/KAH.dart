import 'package:flutter/material.dart';
import 'KAHOrgansing.dart';
import 'KAHParade.dart';
 
class KAH extends StatelessWidget { //CnS
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Key Appointment Holder'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.10,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/KahOrganising_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>KAHOrganising()));
                  }, 
                  child: null,
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.10,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/KahParade_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>KAHParade()));
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
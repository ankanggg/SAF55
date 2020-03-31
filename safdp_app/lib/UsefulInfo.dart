import 'package:flutter/material.dart';
import 'package:safdp_app/homepage.dart';
import 'HeatPrevention.dart';

class UsefulInfo extends StatelessWidget { //CnS
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading:IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));
        }),
        title: Text('Useful Information'),
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
                    image: AssetImage('assets/UsefulInfo_HeatPrevention_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HeatPrevention()));
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
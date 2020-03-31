import 'package:flutter/material.dart';
import 'HistoryEarlyYear.dart';
import 'HistoryWW2.dart';
import 'HistoryBirthOfSAF.dart';
import 'HistoryMaturingSAF.dart';

class SAFStory extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('History of SAF'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
            new Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/SAF.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
            new Container( //Linkage
                padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 10.0),
                child: Text("Credit: National Archives of Singapore                                                                                   ", style: new TextStyle(fontSize: 10,))
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                child: Text("Although the SAF was established in 1965 and Singapore only gained her current version of a National Service-based armed forces in 1967, the history of her defence started long before that.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The first local forces involved in Singapore's protection were the Singapore Volunteer Rifle Corps (SVRC). Though our current generation of the armed forces is worlds apart from the SVRC of 1854, it still shares a commitment to excellence and loyalty to Singapore.",  textAlign: TextAlign.justify)
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.10,
                margin: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/History_Earlyyears_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HistoryEarlyYear()));
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
                    image: AssetImage('assets/History_WW2_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HistoryWW2()));
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
                    image: AssetImage('assets/History_BirthOfSAF_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HistoryBirthOfSAF()));
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
                    image: AssetImage('assets/History_MaturingSAF_Banner.jpg'),
                    fit:BoxFit.cover,
                  ),
                ),
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HistoryMaturingSAF()));
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
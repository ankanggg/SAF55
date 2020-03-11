import 'package:flutter/material.dart';

class ActualDay extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Actual Day (TBC)'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3, 
                margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/Colors_ConsecrationOfColor.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Conscecration Of Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The SAF adopted the British custom for the consecration of the Colours prior the presentation to the Units. The drums are traditionally piled to provide an altar for the consecration.The Colours are then draped on the pile for the consecration, the pikes resting on the hoop to retain the Colours pikes in position. After the Colours have been consecrated, the drums are recovered in the same way. The Colours after being blessed by the various religious leaders, is handed over to the President, who will present the newly consecrated Colours to the CO/Commander of the Unit. The Colours are then trooped.", textAlign: TextAlign.justify),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3, 
                margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_ColorsInDisplay.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Trooping of Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The tradition of Trooping of Colours has been traced to the days of the early mercenaries when men were taught to use their flag as a rallying point in battle. Trooping the Colours before a battle assured that soldiers would recognize them. In the SAF, Trooping of Colours is often performed during unit’s anniversary parade and SAF Day Parade, especially so when a Colours is newly presented after consecration.", textAlign: TextAlign.justify),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3, 
                margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/ActualDay_1.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Inspection Of Guard-Of-Honour", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The parade features 4 Guard-of-Honor (GOH) Contingents, 10 Supporting contingents, 34 Regimental Colours and 3 State Colours. The Reviewing Officer for the Parade will be His Excellency, the President of the Republic of Singapore.", textAlign: TextAlign.justify),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3, 
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/ActualDay_2.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Recital of the SAF Pledge", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("We, Member of the Singapore Armed Forces, do solemnly and sincerely pledge that: We will always bear true faith and allegiance to the President and the Republic of Singapore. We will always support and defend the consitiution. We will preserve and protect the honour and independence of our country with our lives.", textAlign: TextAlign.justify),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3, 
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/ActualDay_3.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("One Minute Observance of Silence", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The one minute of silence is to remember our comrades-in-arms, the precious sons and daughters of Singapore who have lost their lives in the course of duty in the SAF.", textAlign: TextAlign.justify),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3, 
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/ActualDay_4.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Presentation of Awards and Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The President will present the SAF State Color to the Best Combat Unit. The Minister for Defence will present the Best Unit and Best NS Unit awards.", textAlign: TextAlign.justify),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3, 
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/ActualDay_5.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("Parade March Off", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The parade will march off with the Colours Party leading, followed by the GOH, marching contingents, and finally, the SAF Band.", textAlign: TextAlign.justify),
              ),
           ]
          ),
        ),
      ),
    );
  }
}
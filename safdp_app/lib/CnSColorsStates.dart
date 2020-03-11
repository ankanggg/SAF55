import 'package:flutter/material.dart';

class CnSColorsStates extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('State & Regimental Colours'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                child: Text("Presently, there are two types of Colours in the SAF - known as the State Colours and the Regimental Colours. Regimental Colours are awarded to the Formation or Units about five years after its formation. They bear the appropriate crests / logos of the respective Division / Formation / Unit.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Previously, State Colours were awarded to Units two years after they were awarded the Regimental Colours. However, in 1997 the Armed Forces Council decided that State Colours would only be awarded to the Services and SAFTI Military Institute, it being an international institution. Formation and Units would only be awarded the Regimental Colours. The State Colours incorporate the design of the State Flag with the Service Crest emblazoned at the bottom right hand corner of the Colours. When placed side by side, the State Colours and the Regimental Colours signify the pride and loyalty of the Servicemen to their Service / Formation / Unit.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("SAF State Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_ColorStates_SAF.png'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The SAF State Colours adopts the basic design of the State Flag with the SAF Crest emblazoned on it. The SAF State Colours consists of the State Crest, “TENTERA SINGAPURA” which means “Singapore Armed Forces”, the motto of the SAF, “YANG PERTAMA DAN UTAMA” meaning “FIRST AND FOREMOST” and the laurels of excellence. In its entirety, the emblem depicts victory and merit in all the SAF’s endeavours. The SAF State Colours symbolises the pride and honour of officers and men who have contributed towards her success.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The late President of the Republic of Singapore, Mr Ong Teng Cheong presented the SAF State Colours to the Chief of Army, MG Han Eng Juan at the SAF Day Parade on 1 July 1997, held at SAFTI Military Institute. The SAF State Colours is presented to the Army as the Colours is also known as the Army State Colours. It is awarded to the SAF Best.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Colours In SAF", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("In the SAF, Colours are awarded to units in commemoration of their achievements in the field of combat, training, administrative efficiency and service to the community. The Colours also help to promote cohesion, esprit de corps and instil in the men of the unit a sense of pride and loyalty.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("SAFTI Military Intitute State Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_ColorStates_SAFTI.png'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The SAFTI MI State Colours adopts the basic design of the State Flag with the SAF Crest with a blue scroll entitled “SAFTI MI” emblazoned on it.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Mr Ong Teng Cheong presented the SAFTI MI State Colours to the Commandant SAFTI MI, BG Stephen Wong Kong Yip at the SAF Day Parade on 1 July 1996 held at SAFTI Military Institute. The SAFTI MI State Colours is presented to SAFTI MI as it is recognised as an international military institution.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("RSAF State Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_ColorStates_RSAF.png'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The RSAF State Colours adopts the basic design of the State Flag with the RSAF Crest emblazoned on it.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The silver wing signifies that the RSAF is the defender of the skies. The State Crest identifies the RSAF with the Republic of Singapore and the silver streamer with the letters 'RSAF' denotes that it is the Republic of Singapore Air Force. The golden laurels of excellence support the RSAF’s emblem. The RSAF emblem is shaped by a bowl of golden laurel, crowned by the National Coat of Arms made up of the crescent moon, five stars, a lion and tiger.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The national banner of Equality, Peace, Progress, Democracy and Prosperity symbolised by the five stars, and that of a young nation symbolised by the crescent moon, is kept flying high by the silver wings of the RSAF. It stands aloft on a plane of laurels depicting supreme excellence, purity and universal brotherhood. The lion stands for nobleness, courage and majesty. The tiger stands for tenacity and ferocity.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The RSAF State Colours was presented by the President of the Republic of Singapore, Mr Wee Kim Wee during the Retirement and Presentation of Colours Parade at Khatib Camp on 20th October 1991.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("RSN State Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_ColorStates_RSN.png'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The Republic of Singapore Navy (RSN) State Colours adopts the basic design of the State Flag with the RSN Crest emblazoned on it.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The RSN Crest consists of an anchor, ridged by a spray of laurels and emblazoned at the centre by five stars, a crescent moon, flanked by a Lion and Tiger in a presentation of the National Coat of Arms.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The spirit of the nation as symbolised by the crescent moon, five stars, the Lion and Tiger is also that of the spirit of the Navy, which is represented by the Anchor. As the navy of a nation of rising stars, it has all the qualities depicted in the emblem. The Lion stands for nobleness, courage and majesty. The Tiger in the defence of these qualities is ever ready to spring in aggressiveness and ferocity. The laurels were as the hallmarks of excellence are that of professional nobility of mind and action that go into the making of the navy.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The RSN State Colours was presented by the President of the Republic of Singapore, Mr Wee Kim Wee on the Retirement and Presentation Parade on 20th October 1991 at Khatib Camp.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Regimental Colours", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_ColorStates_NDPDisplay.png'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Viewers of the National Day Parade will definitely notice the group of “flags”, referred to as the “Colours Party”. The most common misconception is that the “flags” on parade are simply representing the Units. True to a certain extent, but technically wrong. First of all, the “flags” on parade are actually not “flags” at all, they are Colours. The main difference is that Colours are consecrated at the presentation ceremony by heads of various religions, but flags are not. Other significant differences include the physical appearance of the Colours, and the protocols applied. Colours are arranged on parade as per order of protocol. The oldest Colours is placed on the left of the observer, and the sequence follows, with the youngest Colours taking the last position on the right. There are exceptions to this rule in the Singapore context, such as the placement of the Regimental Colours of the Commandos.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The Colours are an embodiment of the spirit of the Unit. They represent the pride, honour, and loyalty of the men. Its significance cannot be downplayed, but few can grasp its importance. ", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("SAFTI MI and Commandos Regimental Colours do not observe the order-by-date-of-grant arrangement. These Colours precede SAF’s first Regimental Colours (1SIR - 27 July 1961), despite being granted on a later date.", textAlign: TextAlign.justify)
              ),
              new Container( //Linkage
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("https://i-zone.outsystemsenterprise.com/OutSystemsNowService/open.aspx?action=openapp&url=SAFCustomsandTraditionsHandbook", style: new TextStyle(fontSize: 10,))
              ),
              new Container( //Linkage
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                child: Text("https://www.mindef.gov.sg/oms/dam/publications/eBooks/More_eBooks/ourArmyCustomsTraditions.PDF", style: new TextStyle(fontSize: 10,))
              ),
           ]
          ),
        ),
      ),
    );
  }
}
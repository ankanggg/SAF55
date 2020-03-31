import 'package:flutter/material.dart';

class HistoryWW2 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('History - World War 2'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                child: Text("1941 - The Japanese campaign into South East Asia had begun. The British commanders had thought that Singapore was an 'impregnable fortress', but troops stationed here were inexperienced compared to the Japanese forces.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("10 Dec 1941 - Disaster struck when two British battleships, Repulse and Prince of Wales, were sunk by Japanese planes.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Jan 1942 - The British, fighting a losing battle, chose to retreat. They blew up a section on Johore Causeway in a bid to slow down the Japanese advance into Singapore.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Feb 1942 - Japanese troops entered Singapore and seized control over Tengah Air Field and Johore Causeway.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("8 Feb 1942 - The Japanese crossed the narrow Straits of Johore into Kranji and Sarimbun, beginning their invasion of Singapore. For the next seven days, the British put up stiff resistance but were no match for the Japanese. Volunteer forces also fought alongside regular forces in the Battles of Bukit Timah and Pasir Panjang to fend off the Japanese.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("15 Feb 1942 - Despite all their efforts, Singapore was surrendered. During the Japanese occupation, the Straits Settlements Volunteer Force (SSVF) and local forces were indispensable to the war effort. SSVF corpswoman Elizabeth Choy was detained and interrogated by the Kempeitai alongside other locals following the Double Tenth Massacre. Men and women such as Lim Bo Seng joined special operations forces, gathered intelligence and fought where they could. The Chinese in Singapore's volunteer armies were targeted during the Sook Ching Massacre, or sent with other prisoners of war to build the Death Railway.", textAlign: TextAlign.justify),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("May 1945 - The war in Europe ended with Germany's surrender.",  textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Aug 1945 - The bombing of Hiroshima and Nagasaki signalled the end of Japan's war efforts.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("15 Aug 1945 - The Japanese invaders in Singapore laid down their arms and the Japanese occupation was over.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("May 1945 - The war in Europe ended with Germany's surrender.",  textAlign: TextAlign.left)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1948 - The Malayan Naval Force was formed by the colonial government in Singapore to bolster its sea defences.",  textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("1949 - The Straits Settlements Volunteer Force (SSVF), which had been dissolved, was reinstated as the Singapore Volunteer Corps (SVC) to keep peace domestically.",  textAlign: TextAlign.justify)
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
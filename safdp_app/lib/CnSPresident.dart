import 'package:flutter/material.dart';

class CnSPresident extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('President Standard'),
      ),
      body: SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("The President Standard Flag", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                width: MediaQuery.of(context).size.width * 0.8, 
                height: MediaQuery.of(context).size.height * 0.3,
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/CnS_ColorStates_PresidentFlag.png'),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The President Standard is a red flag with a white Crescent Moon and Five Stars emblazoned in the centre. The colour red is symbolic of the universal brotherhood and equality of man. The Crescent represents a young country on the ascent while the five stars represent democracy, peace, progress, justice and equality.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The President Standard is flown from the highest point on the Istana main building. The Standard is flown daily from 8.00 am to 6.00 pm, or until such time when the President has left for his private residence.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The above Standard is raised folded and tied with a ‘quickrelease’ knot. On the final execution of the “Salute” or “Present Arms” to the President on his arrival for an event/parade, the knot is tugged thus releasing the Standard to ‘Fly’. This is evidently witnessed during major parades like SAF Day and National Day.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                child: Text("Presidental Lance Guard Pennant", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("In our modern society with well-established police and security forces, the idea of Presidential Guards armed with lances would seem old fashioned. On the contrary, this practice has deep symbolic significance dating back to the medieval times.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("In olden days, knights in armour were the cream of the fighting forces. The best knights and Champions formed a special guard that protected the monarch or ruling lord on and off the battlefield. The lance is a form of spear that was very popular with the armoured knights of old. The date of its introduction into civilised armies, however, went much further than the Middle Ages. Its employment can definitely be traced to the Assyrians and Egyptians. The Greeks and Romans also used lances. The British in turn were impressed by the weapon during the Battle of Waterloo and in 1816, organised the first regiment of Lancers. During the First World War, this medieval weapon was carried by the Germans, French and British in a war fought mainly with machine-guns. It was only in 1927, that the British Army finally abolished the Lance as a weapon. However, it was retained for ceremonial purposes. In times of peace, no ancient weapon contributed more to the pomp and pageantry of war than the Lance. The sight of a column of Lancers with steel points flashing and pennants flying is a memorable spectacle.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("The Cavalry or Armour is the forerunner of today’s Armies as were Armoured Knights of the past. Thus appropriately, the SAF Armour Formation has inherited this tradition.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Singapore’s first troop of Lance Guards were formed on 3 December 1959 at a ceremonial installation of His Excellency the Yang Di-Pertuan Negara Encik Yusof Bin Ishak. They were dressed in their traditional cavalry fashion with red hats and black peaks, white tunic with blue trousers (patrol order), chain mail epaulettes, boots with spurs and cross belt with message pouches.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Today, they are known as Presidential Lance Guards and are mounted during State Occasions for the President since the first National Day Parade.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("Their performance during the parade will honour the arrival and departure of the President of the Republic of Singapore. The dozen men mounting the Lance Guard are themselves outstanding soldiers of our fighting force. Not only are they physically impressive, they are also highly trained and disciplined. This is a prerequisite be fitting the solemnity of the occasion. Lance Guards must have the endurance to parade for long duration. They are dressed in No. 1 ceremonial uniform and carry the Lance.", textAlign: TextAlign.justify)
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 20.0),
                child: Text("This is a prestigious appointment. Only selected Armoured personnel are qualified to be a Presidential Lance Guard.", textAlign: TextAlign.justify)
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
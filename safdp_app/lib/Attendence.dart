import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';
import 'AttendenceView.dart';

class Attendence extends StatefulWidget{
  @override
  AttendenceState createState() => AttendenceState();
}

class AttendenceState extends State<Attendence> {
  List<Item> attendenceList = List(); //Items
  Item attendenceItem; //Item
  DatabaseReference attendenceRef; //ItemRef

  final GlobalKey<FormState> attendenceFormKey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();

    //Date
    DateFormat dateFormat = DateFormat("dd-MM \n HH:mm");
    var date = dateFormat.format(DateTime.now());

    attendenceItem = Item('', date, '', '','');
    attendenceRef = FirebaseDatabase.instance.reference().child('Attendance'); //The name for the folder.
    attendenceRef.onChildAdded.listen(_onEntryAdded);
    attendenceRef.onChildChanged.listen(_onEntryChanged);
  }

  _onEntryAdded(Event event){
    setState((){
      attendenceList.add(Item.fromSnapshot(event.snapshot));
      });
  }
            
  _onEntryChanged(Event event) {
      var old = attendenceList.singleWhere((entry){
        return entry.key == event.snapshot.key;
    });
    setState((){
      attendenceList[attendenceList.indexOf(old)] = Item.fromSnapshot(event.snapshot);
     });
  }
            
  void handleSubmit() {
    final FormState form = attendenceFormKey.currentState;
              
     if (form.validate()) {
       form.save();
       form.reset();
       attendenceRef.push().set(attendenceItem.toJson());
     }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       title: Text('Attendance Taking'),
    ),
    resizeToAvoidBottomPadding: false,
    body: Column(
      children: <Widget>[
        Flexible(
           flex:0,
           child: Center(
             child: Form(
             key: attendenceFormKey,
              child: Flex(
                direction: Axis.vertical,
                  children: <Widget>[
                  Container( //Linkage
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                    child: Text("Please input the attendance in the format", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14))
                  ),
                  //columnWidths: {1:FractionColumnWidth(.3)},
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Table(
                      children: [
                        TableRow (children: [
                          Column(children:[Text('GOH 1-4', textAlign: TextAlign.center,)]),
                          Column(children:[Text('C 1-10',textAlign: TextAlign.center,)]),
                          Column(children:[Text('Band',textAlign: TextAlign.center,)]),
                          Column(children:[Text('Colour',textAlign: TextAlign.center,)]),
                        ]),
                      ]),     
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'What is your contingent?'
                        ),
                        initialValue: '',
                        onSaved: (val) => attendenceItem.contingent = val,
                        validator: (val) {
                          if (val.isEmpty) {
                            return 'Please follow the format & input your contingent';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'How many pax present?'
                        ),
                        initialValue: '',
                        onSaved: (val) => attendenceItem.present = val,
                        validator: (val) {
                          final isDigitsOnly = int.tryParse(val);
                          return isDigitsOnly == null ? 'Please input a number' : null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'How many pax MC?'
                        ),
                        onSaved: (val) => attendenceItem.mc = val,
                        validator: (val) {
                          final isDigitsOnly = int.tryParse(val);
                          return isDigitsOnly == null ? 'Please input a number' : null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Others?'
                        ),
                        initialValue: '',
                        onSaved: (val) => attendenceItem.other = val,
                        validator: (val) {
                          final isDigitsOnly = int.tryParse(val);
                          return isDigitsOnly == null ? 'Please input a number' : null;
                        },
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color:Colors.red,
                    child: new Text("Submit Attendence"),
                    onPressed: (){
                    handleSubmit();
                    },
                  ),
                ],
              ),
            ),
          ),
         ),
         Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Center(
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(100.0, 20.0, 100.0, 20.0),
              textColor: Colors.white,
              color:Colors.red,
              child: new Text("View Attendence"),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>AttendenceView()));
              },
            ),
          ),
        ),
     ],
    )
  );
 }
}
      
class Item {
   String key;
   String contingent;
   String date;
   String present;
   String mc;
   String other;
  
   Item(this.contingent, this.date, this.present, this.mc, this.other);
      
   Item.fromSnapshot(DataSnapshot snapshot)
       : key = snapshot.key,
         contingent = snapshot.value["contingent"],
         date = snapshot.value["date"],
         present = snapshot.value["present"],
         mc = snapshot.value["mc"],
         other = snapshot.value["other"];
         
   toJson() {
     return {
      "contingent":contingent,
      "date": date,
      "present": present,
      "mc": mc,
      "other": other,
     };
   }
}
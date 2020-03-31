import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:intl/intl.dart';

class AttendenceView extends StatefulWidget{
  @override
  AttendenceViewState createState() => AttendenceViewState();
}

class AttendenceViewState extends State<AttendenceView> {
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
       title: Text('View Attendance'),
    ),
    resizeToAvoidBottomPadding: false,
    body: Container(
      margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      child: new FirebaseAnimatedList(
      query: attendenceRef,
      itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index){
        return new SingleChildScrollView(
          child: Table(
            columnWidths: {0: FractionColumnWidth(.3), 1: FractionColumnWidth(.2), 1: FractionColumnWidth(.2), 1: FractionColumnWidth(.2)},
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow( children: [
                Column(children:[Text(attendenceList[index].contingent!=null?attendenceList[index].contingent:'')]),
                Column(children:[Text('P')]),
                Column(children:[Text('MC')]),
                Column(children:[Text('Others')]),
              ]),
              TableRow( children: [
                Column(children:[Text(attendenceList[index].date, textAlign: TextAlign.center),]),
                Column(children:[Text(attendenceList[index].present!=null?attendenceList[index].present:'', textAlign: TextAlign.center)]),
                Column(children:[Text(attendenceList[index].mc!=null?attendenceList[index].mc:'', textAlign: TextAlign.center)]),
                Column(children:[Text(attendenceList[index].other!=null?attendenceList[index].other:'', textAlign: TextAlign.center)]),
              ]),
            ]
          ),
        );
      }
    )
   ),
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
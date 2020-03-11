import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:intl/intl.dart';

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
    DateFormat dateFormat = DateFormat("dd-MM");
    var date = dateFormat.format(DateTime.now());

    attendenceItem = Item(date, '', '', '','');
    attendenceRef = FirebaseDatabase.instance.reference().child('Attendence'); //The name for the folder.
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
       title: Text('Attendence Taking'),
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
                    padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                    child: Text("Please input in this format: Example:",)
                  ),
                  //columnWidths: {1:FractionColumnWidth(.3)},
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Table(
                      children: [
                        TableRow (children: [
                          Column(children:[Text('Guest of Honor', textAlign: TextAlign.center,)]),
                          Column(children:[Text('Contingent',textAlign: TextAlign.center,)]),
                          Column(children:[Text('Band',textAlign: TextAlign.center,)]),
                          Column(children:[Text('Colours',textAlign: TextAlign.center,)]),
                        ]),
                        TableRow (children: [
                          Column(children:[Text('GOH', textAlign: TextAlign.center,)]),
                          Column(children:[Text('C',textAlign: TextAlign.center,)]),
                          Column(children:[Text('Band',textAlign: TextAlign.center,)]),
                          Column(children:[Text('Colours',textAlign: TextAlign.center,)]),
                        ]),
                      ]),     
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'What is your contingent?'
                        ),
                        initialValue: '',
                        onSaved: (val) => attendenceItem.contingent = val,
                        validator: (val) => val == '' ? val : null,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
                          return isDigitsOnly == null ? 'Input needs to be digits only' : null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'How many pax MC?'
                        ),
                        onSaved: (val) => attendenceItem.mc = val,
                        validator: (val) {
                          final isDigitsOnly = int.tryParse(val);
                          return isDigitsOnly == null ? 'Input needs to be digits only' : null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
                          return isDigitsOnly == null ? 'Input needs to be digits only' : null;
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
         Flexible(
           child: FirebaseAnimatedList(
            query: attendenceRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index){
            return new SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
                columns:[
                DataColumn(label: Text(attendenceList[index].contingent!=null?attendenceList[index].contingent:'')),
                DataColumn(label: Text('Present')),
                DataColumn(label: Text('MC')),
                DataColumn(label: Text('Others')),
                ], //Columns
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text(attendenceList[index].date!=null?attendenceList[index].date:'')),
                      DataCell(Text(attendenceList[index].present!=null?attendenceList[index].present:'')),
                      DataCell(Text(attendenceList[index].mc!=null?attendenceList[index].mc:'')),
                      DataCell(Text(attendenceList[index].other!=null?attendenceList[index].other:'')),
                    ],
                  ),
                ], //Rows
                ),
              );
              },
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
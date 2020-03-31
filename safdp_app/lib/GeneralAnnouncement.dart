import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:intl/intl.dart';

class GeneralAnnouncement extends StatefulWidget{
  @override
  GeneralAnnouncementState createState() => GeneralAnnouncementState();
}

class GeneralAnnouncementState extends State<GeneralAnnouncement> {
  List<Item> generalAnnouncementList = List(); //Items
  Item generalAnnouncementItem; //Item
  DatabaseReference generalAnnouncementRef; //ItemRef

  final GlobalKey<FormState> safetyFormKey = GlobalKey<FormState>();

  @override
  void initState(){

    //Date
    DateFormat dateFormat = DateFormat("yyyy-MM-dd \n HH:mm");
    var date = dateFormat.format(DateTime.now());

    super.initState();
    generalAnnouncementItem = Item('', '', date);
    //final FirebaseDatabase database = new FirebaseDatabase(app:app);
    //safetyMessageRef = database.reference().child('safetyMessageList'); 
    generalAnnouncementRef = FirebaseDatabase.instance.reference().child('General Announcement'); //The name for the folder.
    generalAnnouncementRef.onChildAdded.listen(_onEntryAdded);
    generalAnnouncementRef.onChildChanged.listen(_onEntryChanged);
  }

  _onEntryAdded(Event event){
    setState((){
      generalAnnouncementList.add(Item.fromSnapshot(event.snapshot));
      });
  }
            
  _onEntryChanged(Event event) {
      var old = generalAnnouncementList.singleWhere((entry){
        return entry.key == event.snapshot.key;
    });
    setState((){
      generalAnnouncementList[generalAnnouncementList.indexOf(old)] = Item.fromSnapshot(event.snapshot);
     });
  }
            
  void handleSubmit() {
    final FormState form = safetyFormKey.currentState;
              
     if (form.validate()) {
       form.save();
       form.reset();
       generalAnnouncementRef.push().set(generalAnnouncementItem.toJson());
     }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
       title: Text('General Announcement'),
    ),
    resizeToAvoidBottomPadding: false,
    body: Column(
      children: <Widget>[
        Flexible(
           flex:0,
           child: Center(
             child: Form(
             key: safetyFormKey,
              child: Flex(
                direction: Axis.vertical,
                  children: <Widget>[
                  Container( //Linkage
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                    child: Text("Note: Strictly no PDPA, restricted and above information.", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14), textAlign: TextAlign.center,)
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.info, size:28, color:Colors.red),
                      title: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Title'
                        ),
                        initialValue: '',
                        onSaved: (val) => generalAnnouncementItem.title = val,
                        validator: (val) {
                          if (val.isEmpty) {
                            return 'Please input a title';
                          }
                          return null;
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
                          labelText: 'Description'
                        ),
                        initialValue: '',
                        onSaved: (val) => generalAnnouncementItem.body = val,
                        validator: (val) {
                          if (val.isEmpty) {
                            return 'Please input a description';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color:Colors.red,
                    child: new Text("Submit Message"),
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
            query: generalAnnouncementRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index){
            return new ListTile(
              leading: Icon(Icons.message, color:Colors.red),
              title: Text(generalAnnouncementList[index].title),
              subtitle: Text(generalAnnouncementList[index].body),
              trailing: Text(generalAnnouncementList[index].date),
              isThreeLine: true,
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
   String title;
   String body;
   String date;
  
   Item(this.title, this.body, this.date);
      
   Item.fromSnapshot(DataSnapshot snapshot)
       : key = snapshot.key,
         title = snapshot.value["title"],
         body = snapshot.value["body"],
         date = snapshot.value['date'];
    
   toJson() {
     return {
      "title": title,
      "body": body,
      'date': date
     };
   }
}
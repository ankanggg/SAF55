import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FunFact extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Fun Facts'),
      ),
      body : SingleChildScrollView(
        child: Column(children: <Widget>[
          new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://m.facebook.com/notes/connexionsg/8-things-at-tengah-air-base-that-will-surprise-you/1716455595063065/');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                leading: Icon(Icons.web, color: Colors.indigo[900]),
                title: Text('8 THINGS ABOUT TENGAH AIRBASE', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
            ),
           ),
          new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://www.mindef.gov.sg/web/portal/pioneer/article/cover-article-detail/milestones/2019-Q3/02sep19_news1');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                leading: Icon(Icons.web, color: Colors.indigo[900]),
                title: Text('8 THINGS YOU DIDN’T KNOW ABOUT THE RSAF', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
              ),
            ),
            new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://www.straitstimes.com/singapore/celebrating-ns50-stand-by-universe-and-other-ns-men-lingo');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                leading: Icon(Icons.web, color: Colors.indigo[900]),
                title: Text('NS LINGO', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
              ),
            ),
            new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://goodyfeed.com/saf-outdone-hilarious-videos-army-lingo/');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                leading: Icon(Icons.web, color: Colors.indigo[900]),
                title: Text('NS LINGO Part 2', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
              ),
            ),
            new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://www.youtube.com/watch?v=mGKLBmQoBr4&feature=youtu.be');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                leading: Icon(Icons.featured_video, color: Colors.indigo[900]),
                title: Text('10 THINGS YOU NEVER KNEW ABOUT THE SAF', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
              ),
            ),
            new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://m.facebook.com/notes/connexionsg/7-things-you-didnt-know-about-paya-lebar-air-base/1707381079303850/');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                leading: Icon(Icons.web, color: Colors.indigo[900]),
                title: Text('7 THINGS YOU NEVER KNEW ABOUT PAYA LEBAR AIR BASE', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
              ),
            ),
            new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://m.facebook.com/notes/connexionsg/6-cool-facts-we-discovered-at-changi-air-base/1706174526091172/');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                leading: Icon(Icons.featured_video, color: Colors.indigo[900]),
                title: Text('6 THINGS YOU NEVER KNOW ABOUT CHANGI AIR BASE', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
              ),
            ),
        ],),
      ),
    );
  }
}
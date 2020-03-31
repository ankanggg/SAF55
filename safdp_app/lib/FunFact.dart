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
                launch('https://www.straitstimes.com/singapore/celebrating-ns50-stand-by-universe-and-other-ns-men-lingo');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                title: Text('Ns Lingo', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
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
                title: Text('Ns Lingo Part 2', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
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
                title: Text('10 things you never know about SAF', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
              ),
            ),
          new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://m.facebook.com/story.php?story_fbid=1658497614192197&id=166565800052060');
            },
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              title: Text('Do you know why the SAF IDs are also known as 11B?', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
              )
            ),
          ),
          new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://www.facebook.com/166565800052060/posts/1684245604950731/');
            },
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              title: Text('There’s a bit of French fashion in the SAF', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
              )
            ),
          ),
          new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://www.facebook.com/166565800052060/posts/1667223046652987/');
            },
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              title: Text('The one every soldier wears but hopes never to use', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
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
                title: Text('8 things you didnt know about the RSAF', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
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
                title: Text('6 cool facts we discovered at Changi Air Base', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
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
                title: Text('7 things you didn’t know about Paya Lebar Air Base', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
              ),
            ),
            new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://m.facebook.com/notes/connexionsg/8-things-at-tengah-air-base-that-will-surprise-you/1716455595063065/');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                title: Text('8 things at Tengah Air Base that will surprise you', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
            ),
           ),
           new Card(
            elevation: 10.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GestureDetector(
              onTap: () {
                launch('https://www.straitstimes.com/singapore/a-rare-look-at-rsn-submarine-training-crew-can-now-take-out-adversary-within-minutes');
              },
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                title: Text('A rare look at RSN submarine training', textAlign: TextAlign.center, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
                )
            ),
           ),
        ],),
      ),
    );
  }
}
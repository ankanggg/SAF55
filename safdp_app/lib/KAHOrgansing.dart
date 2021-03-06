import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
 
class KAHOrganising extends StatefulWidget {
  KAHOrganising() : super();
 
  @override
  KAHState createState() => KAHState();
}
 
class KAHState extends State<KAHOrganising> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;

  List imgList = [
    'assets/KAH_SAFDPChairman.jpg',
    'assets/KAH_SAFDPdyChairman.jpg',
    'assets/KAH_SAFDPdyChairman2.jpg',
    'assets/KAH_PacChairman.jpg',
    'assets/KAH_PacDyChairman1.jpg',
    'assets/KAH_PacDyChairman2.jpg',
  ];
 
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Organising KAH'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 400.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child: Image.asset( //Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: goToPrevious,
                  child: Text("<"),
                ),
                OutlineButton(
                  onPressed: goToNext,
                  child: Text(">"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
 
  goToNext() {
    carouselSlider.nextPage(
      duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
}
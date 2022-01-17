import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../other/NavBar.dart';
import '../other/UpperBar.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPos = 0;
  bool _value = false;
  List<String> imagelist = [
    'sample_image1.jpg',
    'sample_image2.jpg',
    'sample_image3.jpg',
    'sample_image4.jpg',
    'sample_image5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: UpperBar(),
        drawer: NavBar(),
        body: Column(children: [
          CarouselSlider.builder(
              itemCount: imagelist.length,
              itemBuilder: (context, index, int a) {
                return ImageView(imagelist[index]);
              },
              options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagelist.map((url) {
              int index = imagelist.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPos == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          )
        ]),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                  ],
                ),            Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded)),
                  ],
                ),            Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                  ],
                )
              ],
            ),
          )
        ),
      ),
      theme: ThemeData(
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white))),
    );
  }
}

class ImageView extends StatelessWidget {
  String imgPath;

  ImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(6, 20, 6, 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: new AssetImage(imgPath),
          fit: BoxFit.cover,
        ),
      ));
  }
}

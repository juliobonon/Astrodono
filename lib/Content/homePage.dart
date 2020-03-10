import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_astronomy/Content/planets/earth.dart';
import 'package:easy_astronomy/Content/planets/mars.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Planets"),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('imgs/global.png',
              width: 30,
              ),
              title: Text('Planets')
            ),

             BottomNavigationBarItem(
              icon: Image.asset('imgs/nuclear.png',
              width: 30,
              ),
              title: Text('Physics for dummies')
            ),

             BottomNavigationBarItem(
              icon: Image.asset('imgs/heart.png',
              width: 30,
              ),
              title: Text('Suport us!')
            ),
          ],
        ),
        body: CarouselSlider(
          height: 1000,
          items: <Widget>[
            EarthPlanet(),
            MarsPlanet(),

          ],
        ),
        );
  }
}
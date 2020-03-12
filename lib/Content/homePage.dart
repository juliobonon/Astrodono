import 'package:easy_astronomy/Content/planets/jupiter.dart';
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
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'imgs/world.png',
                width: 30,
                color: Colors.white,
              ),
              title: Text('Planets')),
          BottomNavigationBarItem(
            icon: Image.asset(
              'imgs/nuclear.png',
              width: 30,
              color: Colors.white,
            ),
            title: Text(
              'Physics',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'imgs/heart.png',
              width: 30,
              color: Colors.white,
            ),
            title: Text(
              'Support us!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: CarouselSlider(
        height: 1000,
        items: <Widget>[
          EarthPlanet(),
          MarsPlanet(),
          JupiterPlanet(),
        ],
      ),
    );
  }
}
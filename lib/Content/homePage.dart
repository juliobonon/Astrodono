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
        body: CarouselSlider(
          height: 1000,
          items: <Widget>[
            EarthPlanet(),
            MarsPlanet(),

          ],
        ));
  }
}

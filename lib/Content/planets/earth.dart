import 'package:easy_astronomy/Content/planets/earthInfo.dart';
import 'package:flutter/material.dart';

class EarthPlanet extends StatefulWidget {
  @override
  _EarthPlanetState createState() => _EarthPlanetState();
}

class _EarthPlanetState extends State<EarthPlanet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Container(
        child: Column(
          
          children: <Widget>[
            Container(
              child: Text(
                "Earth",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              child: Container(
                height: 150,
                width: 200,
                child: Image.asset('imgs/internet.png'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              height: 200,
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 110,
                        child: RaisedButton(
                          
                        color: Colors.white,
                        child: Text(
                          "Get Data!",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Planeta()));
                        },
                      ),
                      ),
                      ButtonTheme(
                        minWidth: 110.0,
                        child: RaisedButton(
                        color: Colors.white,
                        child: Text(
                          "Moons!",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        onPressed: () {},
                      ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

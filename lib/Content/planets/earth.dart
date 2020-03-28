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
      child: Container(
        padding: EdgeInsets.only(
          top:50,
          left:40,
          right:40,
        ),
        width: 500,
        color: Colors.black,
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
              child: Image.asset('imgs/internet.png',
              height: 200,
              ),          
            ),
             SizedBox(
                height: 40,
              ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  ButtonTheme(
                    minWidth: 200,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.white,
                      child: Text(
                        "Get Data!",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EarthInfo()),
                        );
                      },
                    ),
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

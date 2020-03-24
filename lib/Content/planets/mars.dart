import 'package:easy_astronomy/Content/planets/marsInfo.dart';
import 'package:flutter/material.dart';
import 'package:easy_astronomy/Content/planets/weightMars.dart';

class MarsPlanet extends StatefulWidget {
  @override
  _MarsPlanetState createState() => _MarsPlanetState();
}

class _MarsPlanetState extends State<MarsPlanet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(
          top: 80,
          left: 40,
          right: 40,
        ),
        width: 1000,
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Mars",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Image.asset('imgs/mars.png',
              height: 200,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Column(
                children: <Widget>[
                   ButtonTheme(
                    minWidth: 200,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.white,
                      child: Text(
                        "Get Data!",
                        style: TextStyle(color: Colors.black, fontSize: 20,),
                        textAlign: TextAlign.center,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Planeta()),
                        );
                      },
                    ),
                  ),
             

                  SizedBox(height: 10),
                  ButtonTheme(
                    minWidth: 200,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.white,
                      child: Text(
                        "Martin Weight",
                        style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MarsWeight(),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )
                ],
              ),
            
          ],
        ),
      ),
    );
  }
}

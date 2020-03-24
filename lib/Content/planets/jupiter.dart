import 'package:easy_astronomy/Content/planets/jupiterInfo.dart';
import 'package:flutter/material.dart';

class JupiterPlanet extends StatefulWidget {
  @override
  _JupiterPlanetState createState() => _JupiterPlanetState();
}

class _JupiterPlanetState extends State<JupiterPlanet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(
          top:80,
          left:40,
          right:40,
        ),
        color: Colors.black,
        width: 1000,
        child: Column(
          children: <Widget>[
            
            Container(
              child: Text(
                "Jupiter",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            
            Container(
              child: Image.asset('imgs/jupiter.png',
              height: 200,
              width: 200,
              ),
            ),

            SizedBox(height: 60),

            Container(
              child: Column(
                children: <Widget>[

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
                      "Asteroid Belt",
                      style: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                     onPressed: (){},
                     shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              ),

                   ),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
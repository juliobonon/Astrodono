import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response =
      await http.get('https://api.le-systeme-solaire.net/rest/bodies/jupiter');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  double sideralOrbit;
  bool isPlanet;
  double gravity;
  String discoveryBy;
  double density;

  Album(
      {this.sideralOrbit,
      this.isPlanet,
      this.gravity,
      this.discoveryBy,
      this.density});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        sideralOrbit: json['sideralOrbit'],
        isPlanet: json['isPlanet'],
        gravity: json['gravity'],
        discoveryBy: json['discoveredBy'],
        density: json['density']);
  }
}

class Planeta extends StatefulWidget {
  @override
  _PlanetaState createState() => _PlanetaState();
}

class _PlanetaState extends State<Planeta> {
  Future<Album> futureAlbum;
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mars'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Scaffold(
          
                  body: Container(
                    padding: EdgeInsets.only(
                    bottom:10,
                    right:10,
                    ),
                    color: Colors.black,
                    child: Stack (
                    
                    children: <Widget>[
                      
                      Positioned(
                        top: 1,
                        right:150,
                        bottom: 10,
                        child: Container(
                          child: Image.asset('imgs/jupiter.png',
                          ),
                        ),
                      ),
                      
                 
                        

                    Positioned(
                       top: 30,
                       left: 170,
                       height: 200,
                       width: 150,

                       child: Stack(
                         alignment: Alignment.center,
                         children: <Widget>[

                           Positioned(
                             top: 40,
                             child: Container(
                               
                              width: 400,
                             height: 150,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.white,
                            
                             ),
                             padding: EdgeInsets.only(
                               top:20,
                             ),
                             child: Text("Density",
                             textAlign: TextAlign.center,
                             style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                            ),


                           ),
                           ),

                          Positioned(
                            bottom: 15,
                            child:  Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange[400],
                              ),
                             padding: EdgeInsets.only(
                               top: 20,
                             ),
                             width: 310,
                             height: 80,
                             child: Text(snapshot.data.density.toStringAsPrecision(3),
                             textAlign: TextAlign.center,
                             style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                             ),
                           ),
                          ),
                            
                          
                         ],
                       ),
                     ),




                     Positioned(
                       top: 205,
                       left: 170,
                       height: 200,
                       width: 150,

                       child: Stack(
                         alignment: Alignment.center,
                         children: <Widget>[

                           Positioned(
                             top: 40,
                             child: Container(
                               
                              width: 400,
                             height: 150,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.white,
                            
                             ),
                             padding: EdgeInsets.only(
                               top:20,
                             ),
                             child: Text("Gravity",
                             textAlign: TextAlign.center,
                             style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                            ),


                           ),
                           ),

                          Positioned(
                            bottom: 15,
                            child:  Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange[400],
                              ),
                             padding: EdgeInsets.only(
                               top: 20,
                             ),
                             width: 310,
                             height: 80,
                             child: Text(snapshot.data.gravity.toStringAsPrecision(3),
                             textAlign: TextAlign.center,
                             style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                             ),
                           ),
                          ),
                            
                          
                         ],
                       ),
                     ),


                     
                     Positioned(
                       top: 380,
                       left: 170,
                       height: 200,
                       width: 150,

                       child: Stack(
                         alignment: Alignment.center,
                         children: <Widget>[

                           Positioned(
                             top: 40,
                             child: Container(
                               
                              width: 400,
                             height: 150,
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.white,
                            
                             ),
                             padding: EdgeInsets.only(
                               top:20,
                             ),
                             child: Text("Orbit",
                             textAlign: TextAlign.center,
                             style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                            ),


                           ),
                           ),

                          Positioned(
                            bottom: 15,
                            child:  Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange[400],
                              ),
                             padding: EdgeInsets.only(
                               top: 25,
                             ),
                             width: 310,
                             height: 80,
                             child: Text(snapshot.data.sideralOrbit.toStringAsPrecision(4),
                             textAlign: TextAlign.center,
                             style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                             ),
                           ),
                          ),
                            
                          
                         ],
                       ),
                     ),
                     

                     
                     
                    ],
                  ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}

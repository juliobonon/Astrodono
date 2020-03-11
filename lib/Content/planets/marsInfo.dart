import 'package:easy_astronomy/Content/planets/weightMars.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Mars> fetchAlbum() async {
  final response =
      await http.get('https://api.le-systeme-solaire.net/rest/bodies/mars');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    return Mars.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Mars {
  String englishName;
  double sideralOrbit;
  double gravity;
  String discoveryBy;
  double density;

  Mars(
      {this.englishName,
      this.sideralOrbit,
      this.gravity,
      this.discoveryBy,
      this.density});

  factory Mars.fromJson(Map<String, dynamic> json) {
    return Mars(
        englishName: json['englishName'],
        sideralOrbit: json['sideralOrbit'],
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
  Future<Mars> futureMars;
  @override
  void initState() {
    super.initState();
    futureMars = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mars'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<Mars>(
            future: futureMars,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "The gravity on Mars is:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              snapshot.data.gravity.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "The density on Mars is:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              snapshot.data.density.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                        SizedBox(height: 10),

                        Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Mars's sideral orbit:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              snapshot.data.sideralOrbit.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(

                         width: 100,
                         height: 50,
                        child: Expanded(
                          child: ButtonTheme(
                             child: RaisedButton(
                            onPressed: (){
                              Navigator.push(
                               context,
                              MaterialPageRoute(
                              builder: (context) => MarsWeight()));
           
                            },
                            child: Text("Discover your Mars Weight",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          )
                        )
                            
                         
                        
                      ),

                  
                          ],
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

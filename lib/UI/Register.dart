import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:country_pickers/country_pickers.dart';

class RegisterPage extends StatefulWidget {
  @override
  _ResisterPageState createState() => _ResisterPageState();
}

class _ResisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue[900], Colors.blue[700]]),
      ),
      child: ListView(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            child: Image.asset('imgs/earth.png'),
          ),
          SizedBox(height: 40),
          Container(
            width: 20,
            height: 40,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Confirm e-mail",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                   Container(
                     height: 40,
                     decoration: BoxDecoration(
                       color: Colors.white,
                     ),
                   ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}


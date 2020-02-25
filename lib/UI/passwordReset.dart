import 'package:flutter/material.dart';

class RecoveryPasswordPage extends StatefulWidget {
  @override
  _RecoveryPasswordPageState createState() => _RecoveryPasswordPageState();
}

class _RecoveryPasswordPageState extends State<RecoveryPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          right: 40,
          left: 40,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue[900], Colors.blue[900]]
          )
        ),
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset("imgs/moon.png"),
              width: 200,
              height: 200,
            ),
            SizedBox(height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Did you forget your password?",
                style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
              ),
              child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
              
                hintText: 'genius@gmail.com',
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
              ),
              child: SizedBox.expand(
                  child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Send an e-mail!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        child: Image.asset('imgs/moon2.png'),
                        height: 40,
                        width: 40,
                      ),
                    )
                  ],
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}

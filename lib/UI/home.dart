import 'package:flutter/material.dart';
import 'package:easy_astronomy/UI/passwordReset.dart';
import 'package:easy_astronomy/UI/Register.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
              top: 60,
              right: 40,
              left: 40,
            ),
            color: Colors.amber[100],
            child: ListView(children: <Widget>[
              SizedBox(
                width: 180,
                height: 180,
                child: Image(
                  image: AssetImage('imgs/yeet.png'),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text("Recovery your password"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecoveryPasswordPage(),
                        ));
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                      ),
                      width: 150,
                      height: 60,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            iconSize: 30,
                            icon: Image.asset('imgs/facebook.png'),
                            onPressed: () {},
                          ),
                          IconButton(
                            iconSize: 30,
                            icon: Image.asset('imgs/twitter.png'),
                            onPressed: () {},
                          ),
                          IconButton(
                            iconSize: 30,
                            icon: Image.asset('imgs/google-plus.png'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                          ),
                          ),
                    
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            child: FlatButton(
                              onPressed: () {},
                              child: Text("Login",
                              style: TextStyle(color: Colors.white, fontSize: 20)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    )
                  ),
                  
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child:  Text("Register!",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        ),
                        Container(
                          width: 30,
                          child: Image.asset('imgs/moon2.png'),
                        )
                       
                        
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage()
                        ));
                    },
                  ),
                ),
              )
            ])));
  }
}

import 'package:flutter/material.dart';

class MarsWeight extends StatefulWidget {
  @override
  _MarsWeightState createState() => _MarsWeightState();
}

class _MarsWeightState extends State<MarsWeight> {
  
  TextEditingController _weight = TextEditingController();

  String _infoText = '';
  
  void calculate(){
    setState(() {

    double _weightValue = double.parse(_weight.text);

    var result = _weightValue / 9.81 * 3.711;

    

    _infoText = "${result.toStringAsPrecision(4)} kg";
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top:60,
          left:10,
          right:10
        ),
        child:ListView(
          children: <Widget>[
          Image.asset('imgs/weighing-machine.png',
          width: 50,
          height: 200,
          ),
          Text("Ready to discover your weight on Mars?",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 30),
         Column(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10)
              ),
            width: 100,
            child: TextFormField(
              keyboardType: TextInputType.numberWithOptions(),
            maxLines: 1,
            controller: _weight,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
            decoration: InputDecoration(
              labelStyle: TextStyle(
                
              ),
              
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            
            ),
          ),
          ),
          SizedBox(height: 20),
          Container(
            width: 100,
            child: RaisedButton(
            
            child: Text("Go"),
            onPressed: calculate
          ),
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("Your Martian weight is:",
              style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              SizedBox(height: 20),
              Text(
                _infoText,
                textAlign: TextAlign.center,
                 style: TextStyle(color: Colors.black, fontSize: 20)
              ),
              
            ],
          )
         ],
         ),

        ],
        ),
      ),
      
    );
  }
}
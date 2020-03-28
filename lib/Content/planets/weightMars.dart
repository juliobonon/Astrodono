import 'package:flutter/material.dart';


class MarsWeight extends StatefulWidget {
  @override
  _MarsWeightState createState() => _MarsWeightState();
}

class _MarsWeightState extends State<MarsWeight> {

  
  TextEditingController _weight = TextEditingController();

  String _infoText = '';
  
  void calculate(){
    
    showModalBottomSheet(context: context, builder: (context){
      return Container(

        padding: EdgeInsets.all(10),
        height: 130,
        width: 100,
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Text("Your martin weight is:",
            style: TextStyle(color: Colors.black, fontSize: 20),
            ),

            SizedBox(height: 10),

            Text(_infoText,
            style: TextStyle(color: Colors.green, fontSize: 40),
            ),


          ],
        ),

      );
    });
     
    

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
          top: 60,
          left:30,
          right: 30,
          bottom: 60,
        ),
        
        child: Container(
           padding: EdgeInsets.only(
             top:30,
             bottom:20,
           ),
         
           decoration: BoxDecoration(

            color: Colors.black,
            borderRadius: BorderRadius.circular(20)

        ),
        
        child: ListView(
          children: <Widget>[
          Image.asset('imgs/weight.png',
          color: Colors.white,
          width: 50,
          height: 150,
          ),

          SizedBox(height: 30),

          Text("Ready to discover your weight on Mars?",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.white),
          ),

          SizedBox(height: 30),

         Column(children: <Widget>[

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
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
                color: Colors.black,
              ),
              
            decoration: InputDecoration(
              border: InputBorder.none,
              labelStyle: TextStyle(  
              ),
              
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            
            ),
          ),
          ),

          SizedBox(height: 30),

          ButtonTheme(
            minWidth: 200,
            height: 50,
           
            child:  RaisedButton(
            color: Colors.white,
            child: Text("Go",
            style: TextStyle(color: Colors.black, fontSize: 20),
             ),
            onPressed: calculate
          ),
          )

         
         ],
         ),

        ],
        ),
      ),
      ),
      
    );
  }
}
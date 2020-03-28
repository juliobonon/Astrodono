import 'package:flutter/material.dart';

class BottomBlock extends StatefulWidget {
  @override
  _BottomBlockState createState() => _BottomBlockState();
}

class _BottomBlockState extends State<BottomBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
 
      width: 200,
      height: 100,
     child:Stack(
       alignment: Alignment.center,
       children: <Widget>[

          
        Container(
          width: 350,
          height: 70,
          padding: EdgeInsets.only(
            top:20,
          ),

          decoration: BoxDecoration(
               color: Colors.orange[900],
               borderRadius: BorderRadius.circular(10)
          ),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

        
              Column(
                children: <Widget>[
                    Text("Gravity 24,79 m/s²",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height:5),
                    Container(
                      width: 20,
                      height: 2,
                      color: Colors.white,
                    )
                ],
                ),
         
                Column(
                    children: <Widget>[
                        Text("Density 1,326 g/cm³",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height:5),
                        Container(
                          width: 20,
                          height: 2,
                          color: Colors.white,
                        )
                    ],
                  ),
           

            ],
          ),
        )

         
       ],
     ),
     
    );
  }
}

class Block extends StatefulWidget {
  @override
  _BlockState createState() => _BlockState();
}

class _BlockState extends State<Block> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: 60,
      height: 250,

      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            
            child:  Image.asset('imgs/jupiterPlane.jpg',
            width: 600,
            height: 600,
            fit: BoxFit.fill,
            

            ),
          ),

          Positioned(
           top: 182,
           left: 290,
            child: ButtonTheme(
              minWidth: 50,
              height: 50,
              child: FloatingActionButton(
                backgroundColor: Colors.black,
                child: Text("Info"),
                onPressed: (){},
              ),
            ),
          )
         
        ],
      )



    );
  }
}

class EarthText extends StatefulWidget {
  @override
  _EarthTextState createState() => _EarthTextState();
}

class _EarthTextState extends State<EarthText> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        left:20,
        right:20,
      ),

      child: Stack(
        children: <Widget>[

        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
          
            children: <TextSpan>[
             TextSpan(text: "    Jupiter ",
             style: TextStyle(color: Colors.orange[800], fontSize: 20, fontWeight: FontWeight.bold),
             
             ),
             TextSpan(text: "is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined. Jupiter is one of the brightest objects visible to the naked eye in the night sky, and has been known to ancient civilizations since before recorded history. It is named after the Roman god Jupiter. When viewed from Earth, Jupiter can be bright enough for its reflected light to cast shadows, and is on average the third-brightest natural object in the night sky after the Moon and Venus.",
             style: TextStyle(color: Colors.black, fontSize: 16)
             
           
              ),
            ]
          ),
        ),


        ],

      ),
    );
  }
}


class JupiterInfo extends StatefulWidget {
  @override
  _JupiterInfoState createState() => _JupiterInfoState();
}

class _JupiterInfoState extends State<JupiterInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          bottom: 10,
        ),

        child: ListView(
          
          children: <Widget>[

            Block(),
            
            SizedBox(height: 30),

            EarthText(),
            
            SizedBox(height: 30),

            BottomBlock(),




          ],
        ),

      ),
      
    );
  }
}
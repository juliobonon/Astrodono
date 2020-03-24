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
          width: 400,
          height: 70,
          padding: EdgeInsets.only(
            top:20,
          ),

          decoration: BoxDecoration(
               color: Colors.blue[900],
               borderRadius: BorderRadius.circular(10)
          ),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

        
              Column(
                children: <Widget>[
                    Text("Gravity 9.8 m/s²",
                  style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
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
                        Text("Density 5.51 g/cm³",
                        style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
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
            
            child:  Image.asset('imgs/earthSurface.jpg',
            width: 600,
            fit: BoxFit.fill,
            

            ),
          ),

          Positioned(
           top: 182,
           left: 330,
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
    return Container(
      padding: EdgeInsets.only(
        left:20,
        right:20,
      ),

      width: 100,
      height: 220,

      child: Stack(
        children: <Widget>[

        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
          
            children: <TextSpan>[
             TextSpan(text: "    Earth ",
             style: TextStyle(color: Colors.blue[800], fontSize: 20, fontWeight: FontWeight.bold),
             
             ),
             TextSpan(text:"is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating and other evidence, Earth formed over 4.5 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, which is Earth's only natural satellite. Earth orbits around the Sun in 365.256 solar days, a period known as an Earth sidereal year. During this time, Earth rotates about its axis 366.256 times, that is, a sidereal year has 366.256 sidereal days.",
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


class EarthInfo extends StatefulWidget {
  @override
  _EarthInfoState createState() => _EarthInfoState();
}

class _EarthInfoState extends State<EarthInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
     
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
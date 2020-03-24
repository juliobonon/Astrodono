import 'package:flutter/material.dart';



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
      height: 300,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),

      child: Stack(
        children: <Widget>[

         Text("Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating and other evidence, Earth formed over 4.5 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, which is Earth's only natural satellite. Earth orbits around the Sun in 365.256 solar days, a period known as an Earth sidereal year. During this time, Earth rotates about its axis 366.256 times, that is, a sidereal year has 366.256 sidereal days",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 15),
           ),

         Positioned(
           top: 250,
           left: 70,
           child: Text("Gravity 9.8",
           style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
           ),
         ),

          Positioned(
           top: 250,
           left: 200,
           child: Text("Density 5.51",
           style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
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
        padding: EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),

        child: ListView(
          children: <Widget>[

            Block(),
            
            SizedBox(height: 20),

            EarthText()




          ],
        ),

      ),
      
    );
  }
}
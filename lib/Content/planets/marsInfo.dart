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
               color: Colors.red[900],
               borderRadius: BorderRadius.circular(10)
          ),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

        
              Column(
                children: <Widget>[
                    Text("Gravity 3.72 m/s²",
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
                        Text("Density 3.93 g/cm³",
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
            
            child:  Image.asset('imgs/mars-landing.jpg',
            width: 600,
            height: 600,
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
      height: 230,

      child: Stack(
        children: <Widget>[

        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
          
            children: <TextSpan>[
             TextSpan(text: "    Mars ",
             style: TextStyle(color: Colors.red[800], fontSize: 20, fontWeight: FontWeight.bold),
             
             ),
             TextSpan(text: "is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury. In English, Mars carries the name of the Roman god of war, and is often referred to as the 'Red Planet'.The latter refers to the effect of the iron oxide prevalent on Mars' surface, which gives it a reddish appearance distinctive among the astronomical bodies visible to the naked eye. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth.",
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


class MarsInfo extends StatefulWidget {
  @override
  _MarsInfoState createState() => _MarsInfoState();
}

class _MarsInfoState extends State<MarsInfo> {
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
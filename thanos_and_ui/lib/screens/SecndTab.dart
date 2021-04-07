import 'package:flutter/material.dart';
import 'package:snappable/snappable.dart';


final graphkey=GlobalKey<SnappableState>(); 

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(horizontal:20,vertical:20),
      alignment: Alignment.center,
      child:ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: <Widget>[
                Text("Average Sleep",
                style:  TextStyle(fontSize:12,
                letterSpacing: 1.3,
                fontWeight: FontWeight.w500,
                color: Color(0xff5b6990) ),
                ),
                SizedBox(height: 10,),
                 Text("6.45h",
                style:  TextStyle(fontSize:30,
                fontWeight: FontWeight.w700,
                color:  Color(0xff5b6990)),
                ),
                SizedBox(height: 30),
                 Text("Average Sleep",
                style:  TextStyle(fontSize:12,
                letterSpacing: 1.3,
                fontWeight: FontWeight.w500,
                color: Color(0xff5b6990) ),
                ),
                SizedBox(height: 10,),
                 Text("6.45h",
                style:  TextStyle(fontSize:30,
                fontWeight: FontWeight.w700,
                color:  Color(0xff5b6990)),
                ),
                
              ],),
                Snappable(key:graphkey,child: 
           Container(height: 200,width:200,
                decoration: BoxDecoration(color:Color(0xfff0f5fb),
                  border:Border.all(width:8,color:Color(0xffd3e1ed)),
                borderRadius: BorderRadius.circular(1)
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                     Text("THIS WEEK",
                style:  TextStyle(fontSize:13,
                fontWeight: FontWeight.w500,
                color:  Color(0xff5b6990)),
                ),
                SizedBox(height: 15,),
             
                Container(
                  height: 120,
                  padding:EdgeInsets.symmetric(horizontal:10),
                  width:double.infinity,
                  child:CustomPaint(foregroundPainter:
                   GraphPainter(),)
                ),
                  ],
                ),

                ),),
              
              
            ],),
            SizedBox(height: 25),
            RecordItem(day:"MONDAY"),
             RecordItem(day:"TUESDAY"),
              RecordItem(day:"WEDNESDAY"),
               RecordItem(day:"THURSDAY"),
                RecordItem(day:"FRIDAY"),
                 RecordItem(day:"SATURDAY"),
                  RecordItem(day:"SUNDAY"),
        ],
      )
      
    );
  }
}

class RecordItem extends StatelessWidget {
  const RecordItem({
    Key key,
    @required this.day,
  }) : super(key: key);
final String day;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.symmetric(vertical:10),
      decoration:BoxDecoration(
        border: Border(
          bottom:BorderSide(color: Color(0xff65e9f7),width:1.5)
        )
      ),
      child: Column(
        children:<Widget>[
            Text(day,
        style:  TextStyle(fontSize:16,
        fontWeight: FontWeight.w700,
        color:  Color(0xff5b6990)),
        ),
        SizedBox(height: 15,),
        Row(
          children: <Widget>[
              Text("01/21/2019",
        style:  TextStyle(fontSize:12,
        fontWeight: FontWeight.w400,
        color:  Color(0xff5b6990)),
        ),
        SizedBox(width: 25,),
        Expanded(child:  Text("45.3 minutes",
        style:  TextStyle(fontSize:13,
        fontWeight: FontWeight.w400,
        color:  Color(0xff5b6990)),
        ), )
          ],
        )
        ]
      ),
    );
  }
}


class GraphPainter extends CustomPainter{
  Paint trackbar=Paint()
  ..color=Color(0xff818aab)
  ..style=PaintingStyle.stroke
  ..strokeCap=StrokeCap.round
  ..strokeWidth=12;

  Paint track=Paint()
  ..color=Color(0xffdee6f1)
  ..style=PaintingStyle.stroke
  ..strokeCap=StrokeCap.round
  ..strokeWidth=12;
  
  @override
  void paint(Canvas  canvas,  Size size) {
      // TODO: implement paint
      Path trackp=Path();
      Path trackbarp = Path();



List val=[
  size.height*0.8,
  size.height*0.5,
  size.height*0.9,
  size.height*0.8,
  size.height*0.5,
];
double origin =8;

for(int i=0;i<val.length;i++)
{
    trackp.moveTo(origin, size.height);
      trackp.lineTo(origin, 0);

trackbarp.moveTo(origin, size.height);
      trackbarp.lineTo(origin, val[i]);

      origin=origin+size.width*0.22;
     

}

    
      canvas.drawPath(trackp,track);
      canvas.drawPath(trackbarp,trackbar);
    }
  
   

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    
         return false; 
  }
}
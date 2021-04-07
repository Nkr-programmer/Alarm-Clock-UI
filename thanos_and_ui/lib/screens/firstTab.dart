import 'package:flutter/material.dart';
import 'package:snappable/snappable.dart';
import 'package:thanos_and_ui/clock/clock.dart';

final clockkey=GlobalKey<SnappableState>(); 

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {



  @override
  Widget build(BuildContext context) {
    return ListView(
      children:<Widget>[  
        Snappable(key:clockkey,child: Clock()),
      SizedBox(height:85),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Alarm Time",
                style: TextStyle(
                  color:Color(0xffff0836),
                  fontSize:12,
                  fontWeight:FontWeight.bold,
                ),
              ),
              SizedBox(height:10.0),
              Text(
                "Alarm Time",
                style: TextStyle(
                  color:Colors.black,
                  fontSize:30,
                  fontWeight:FontWeight.bold,
                ),
              ),
            ],
          ) ,Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "WAKE UP AT",
                style: TextStyle(
                  color:Color(0xffff0836),
                  fontSize:12,
                  fontWeight:FontWeight.bold,
                ),
              ),
              SizedBox(height:10.0),
              Text(
                "Alarm Time",
                style: TextStyle(
                  color:Colors.black,
                  fontSize:30,
                  fontWeight:FontWeight.bold,
                ),
              ),
            ],
          )

      ],)]
      
    );
  }
}
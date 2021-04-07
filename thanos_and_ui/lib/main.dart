import 'package:flutter/material.dart';
import 'package:thanos_and_ui/clock/clock.dart';
import 'package:thanos_and_ui/screens/firstTab.dart';

import 'screens/SecndTab.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Clock',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),

      home: new AppClock(),
    );
  }
}


class AppClock extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      height:600,
      width:double.infinity,
      child:DefaultTabController(length: 3,
      child:
      Scaffold(
            bottomNavigationBar: BottomBar(),
      appBar:AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(preferredSize: Size.fromHeight(55),child:
        Container(
          color:Colors.transparent,
          child:SafeArea(child: Column(children:<Widget>[
            TabBar(
              indicator:UnderlineTabIndicator(borderSide: BorderSide(
                color:Color(0xffff0863),
                width:4.0,
              ),
              insets:EdgeInsets.all(40) ),
              
              indicatorWeight: 15,
           //   indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Color(0xff2d386b),
              labelStyle: TextStyle(fontSize:12,letterSpacing: 1.3,fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.black54,
              
              tabs: [
              Tab(text: "ALARMS",icon: Icon(Icons.watch_later,size:40),)
              ,  Tab(text: "RECORDS",icon: Icon(Icons.menu,size:40),),
                Tab(text: "PROFILE",icon: Icon(Icons.supervised_user_circle,size:40),)
            ],)
          ]),)
        )) ,
      ),
      body: TabBarView(children: <Widget>[
        Center(child: FirstTab(),),
        Center(child: SecondTab(),),
        Text("fgfhj"),
      ]),)
      )
    );
  }
}
class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void snap() { setState(() {
    
  });
clockkey.currentState.isGone?clockkey.currentState.reset():clockkey.currentState.snap();
}
void snaps() { setState(() {
    
  });

graphkey.currentState.isGone?graphkey.currentState.reset():graphkey.currentState.snap();
}
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.fromLTRB(50, 0, 50,50),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(onPressed: (){}, child: Text("EDIT ALARMS",style: TextStyle(letterSpacing:1.5),),
        color: Color(0xffff5e92),
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical:20,horizontal:20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        ),


        FloatingActionButton(
          
          onPressed: (){snaps();},child: Text("+",style: TextStyle(fontSize: 25,
                  fontWeight:FontWeight.w500,color:Color(0xff253365)),),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  elevation: 5.0,
                  highlightElevation: 3,
             ) ],
              ),      
              );
            }
          
           
} 
import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'search.dart';
import 'dart:math';
import 'Animation/loader.dart';
import 'Animation/FadeAnimation.dart';

class StarterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartP();
}

class StartP extends State<StarterPage> {


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),()=>  Navigator.push(
              context,
             MaterialPageRoute(
              builder: (BuildContext context) =>  SearchPage())),
            ); 
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xFFED1C24)),
          ),
          Image.asset("assets/splash.png"),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:350),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ColorLoader3(
                      radius: 20,
                      dotRadius: 5,
                    ),
                   /* CircularProgressIndicator(
                      backgroundColor: Colors.orange[400],
                      strokeWidth: 4 ,
                    ),*/
                   
                    FadeAnimation(3, Text("En iyi fiyatlar geliyor!", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
                    ),),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

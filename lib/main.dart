import 'package:flutter/material.dart';
import 'starterpage.dart';
import 'search.dart';

void main(){
runApp(
   MaterialApp(
    initialRoute: "/",
    routes: {
      "/" :(context) => StarterPage(),
      },
    ),
  );
}
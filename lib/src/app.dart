import 'package:flutter/material.dart';

import 'package:contador/src/pages/home_page.dart';


class MyApp extends StatelessWidget {

  @override
  build( context ) { //context contiene información del arbol de widgets, conoce relación padre-hijo
    //Doc info: https://api.flutter.dev/flutter/material/MaterialApp-class.html
    return MaterialApp(
      home: Center(
        child: HomePage(),
        )      
    ); 

  }


}
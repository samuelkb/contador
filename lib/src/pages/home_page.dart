import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {//Siempre necesario regresar Widgets
    return Scaffold(//docs: https://api.flutter.dev/flutter/material/Scaffold-class.html
      appBar: AppBar(//docs: https://api.flutter.dev/flutter/material/AppBar-class.html
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    ); 
  }


}
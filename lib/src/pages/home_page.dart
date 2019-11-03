import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 25.0);


  @override
  Widget build(BuildContext context) {//Siempre necesario regresar Widgets
    return Scaffold(//docs: https://api.flutter.dev/flutter/material/Scaffold-class.html
      appBar: AppBar(//docs: https://api.flutter.dev/flutter/material/AppBar-class.html
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(//docs: https://api.flutter.dev/flutter/widgets/Column-class.html
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: estiloTexto ),
            Text('0', style: estiloTexto ),
          ],
          )
      ),
    ); 
  }


}
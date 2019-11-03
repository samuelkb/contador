import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {//Se le añade el guion al inicio para hacerlo privado y garantizar que solo se usa en esta clase, no se podra usar fuera del archivo

  final _estiloTexto = new TextStyle(fontSize: 25.0);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {//Siempre necesario regresar Widgets
    return Scaffold(//docs: https://api.flutter.dev/flutter/material/Scaffold-class.html
      appBar: AppBar(//docs: https://api.flutter.dev/flutter/material/AppBar-class.html
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(//docs: https://api.flutter.dev/flutter/widgets/Column-class.html
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps:', style: _estiloTexto ),
            Text( '$_conteo' , style: _estiloTexto ),
          ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),//docs: https://material.io/resources/icons/?style=baseline
        onPressed: () {

          //print('Hola Mundo');

          setState(() {
            _conteo++;
          });


        }, //setted on null its equals to disabled = true
        ),
    ); 
  }

}


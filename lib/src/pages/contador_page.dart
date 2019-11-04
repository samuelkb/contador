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
      floatingActionButton: _crearBotones(),
    ); 
  }


  Widget _crearBotones() {

    return Row(//docs: https://api.flutter.dev/flutter/widgets/Row-class.html
      mainAxisAlignment: MainAxisAlignment.end,//Alinea de start izquierda a end derecha
      children: <Widget>[
        SizedBox( width: 30.0 ),
        FloatingActionButton( child: Icon(Icons.exposure_zero ), onPressed: _reset ),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove ), onPressed: _sustraer ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( child: Icon(Icons.add ), onPressed: _agregar ),
      ],
    ); 
    
  }

  void _agregar() {
      setState(() => _conteo++ );
    }

  void _sustraer() {
    setState(() => _conteo-- );
  }

  void _reset() {
    setState(() => _conteo=0 );
  }


}


import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert page'),),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          color: Colors.blueAccent,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlerta(context)
          ),
      ),
    );
  }


  void _mostrarAlerta(BuildContext context){
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo del alert'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la caja de la alerta'),
                FlutterLogo(size: 100.0)
              ],
            ),
            actions: [
              FlatButton(
                onPressed: () => Navigator.of(context).pop() , 
                child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(), 
                child: Text('Listo')
              ),
            ],

          );
        }
        );
  }
}
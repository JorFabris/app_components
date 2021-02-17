import 'package:app_components/src/pages/alert_page.dart';
import 'package:app_components/src/utils/icons_generator_util.dart';
import 'package:flutter/material.dart';
//Providers
import 'package:app_components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes'),),
      body: _lista(),
    );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){

        return ListView(
          children: _crearItems( snapshot.data, context ),
        );

      },
    );

  

  }

  List<Widget> _crearItems(List<dynamic> data, BuildContext context ) {

    final List<Widget> opciones = [];

    data.forEach((opt) { 
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_forward_ios_outlined, color: Colors.blueAccent),
        onTap: () => Navigator.pushNamed(context, opt['ruta']),
      );
        opciones..add(widgetTemp)
                ..add(Divider());
    });

  return opciones;
   
  }


}
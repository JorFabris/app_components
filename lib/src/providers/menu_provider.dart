import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert' as convert;

class _MenuProvider{
  List<dynamic> opciones = [];

  _MenuProvider(){}

 Future<List<dynamic>> cargarData() async {
    final response = await rootBundle.loadString('assets/menu_opts.json');

    Map dataMap = convert.json.decode(response);
    opciones = dataMap['rutas'];

    return opciones;
  }

}

final menuProvider = new _MenuProvider();
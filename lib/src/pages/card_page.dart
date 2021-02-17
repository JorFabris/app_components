import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipoUno(),
          SizedBox(height: 30.0,),
          _cardTipoDos(),
           SizedBox(height: 30.0,),
           _cardTipoUno(),
          SizedBox(height: 30.0,),
          _cardTipoDos(),
           SizedBox(height: 30.0,),
           _cardTipoUno(),
          SizedBox(height: 30.0,),
          _cardTipoDos(),
           SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardTipoUno() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.blueAccent),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos probando todos los atributos del ListTile en una card'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){}
                ),
                FlatButton(
                child: Text('Listo'),
                onPressed: (){}
                )
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipoDos() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'), 
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
            height: 300.0,
            fit: BoxFit.cover,
            ),
          Container(
            child: Text('No tengo idea que poner'),
            padding: EdgeInsets.all(10.0),
            )
        ],
      ),
    );
  }
}
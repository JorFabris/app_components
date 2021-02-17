import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _password = '';
  bool _show = false;
  Widget _icon = Icon(Icons.lock_outlined);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs page'),),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _textoPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),

        ),
        counter: Text('Caracteres ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Esto es solo un nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (text){
        setState(() {
          _nombre = text;
        });
      },
    );
  }

  Widget _textoPersona() {
    return ListTile(
      title: Text('El nombre de la persona es: $_nombre'),
    );
  }

  Widget _crearEmail() {
        return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          counter: Text('Caracteres ${_email.length}'),
          hintText: 'Email de la persona',
          labelText: 'Email',
          helperText: 'Esto es solo un Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email_rounded)
        ),
      onChanged: (text) => setState(() {_email = text;})
  
    );
  }

  Widget _crearPassword() {
        return TextField(
          obscureText: !_show,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),

            ),
            counter: Text('Caracteres ${_password.length}'),
            hintText: 'Contraseña de la persona',
            labelText: 'Contraseña',
            helperText: 'Esto es solo un Contraseña',
            suffixIcon: IconButton(
              icon: _icon,
              onPressed: ()=>_changeShow(),
              splashColor: Colors.blueAccent[100],
              splashRadius: 20.0,
            ),
            icon: Icon(Icons.login)
          ),
      onChanged: (text) => setState(() {_password = text;})
    );
  }

  void _changeShow(){
    setState(() {
      _show = !_show;
      (_show) ? _icon = Icon(Icons.lock_open_outlined) :  _icon = Icon(Icons.lock_outlined);
    });
  }
}
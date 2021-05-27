import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff455a64),
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          children: <Widget>[
            card1(),
            card2(),
            card3(),
            card5(),
            card4(context),
          ],
        ));
  }

  Card card1() {
    return Card(
      color: Color(0xFFCFD8DC),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 10, 40, 10),
            title: Text('Titulo'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripcion de este card'),
            leading: Icon(Icons.home),
          ),
        ],
      ),
    );
  }

  Card card2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 50,
      color: Color(0xFF9CCC65),
      child: Column(
        children: <Widget>[
          Image.network(
              'https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          Container(
            padding: EdgeInsets.all(30),
            child: Text('imagen por URL|mariposas'),
          ),
        ],
      ),
    );
  }

  Card card3() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      margin: EdgeInsets.all(25),
      elevation: 10,
      color: Color(0xFFB3E5FC),
      child: Column(
        children: <Widget>[
          Image.asset('images/Yakshas.png'),
          Container(
            padding: EdgeInsets.all(10),
            child: Text("imagen por assets|Yakshas"),
          ),
        ],
      ),
    );
  }

  Card card5() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(19),
      elevation: 50,
      color: Color(0xfffff3e0),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 10, 40, 22),
            title: Text('NUEVO MENSAJE'),
            subtitle: Text('Aprovecha las ofertas del hotsale de amazon'),
            leading: Icon(Icons.airplanemode_on),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () => {launch('https://www.amazon.com.mx')},
                  child: Text('Abrir link'))
            ],
          ),
        ],
      ),
    );
  }

  Card card4(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(30),
      elevation: 10,
      color: Color(0xffe1bee7),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 10),
            title: Text('Card'),
            subtitle: Text(
                'Es un widget que nos proporciona el aspecto visual de una tarjeta'),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  child: Text('Regresar'))
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.deepPurple,
            ),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Esta es la descripcion de la tarjeta y tiene que ser un texto muy largo parta demostrar algo del profe'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg',
            ),
            fadeInDuration: Duration(milliseconds: 300),
            height: 250,
            fit: BoxFit.fill,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Imagen de fondo'),
          ),
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: card,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 5.0),
            )
          ]),
    );
  }
}

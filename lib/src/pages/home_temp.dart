import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (String item in opciones) {
      final tempWidget = ListTile(
        title: Text(item),
      );

      lista..add(tempWidget)..add(Divider());
      //What we are doing with the cascade operator is saying to return to te last value and add something
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((opcion) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text(opcion),
            subtitle: Text('Subtitulo'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Divider(
            color: Colors.deepPurple,
            thickness: 1.2,
          ),
        ],
      );
    }).toList();
  }
}

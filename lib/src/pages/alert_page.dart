import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _mostrarAlert(context);
          },
          child: Text('Mostrar alerta'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        builder: (context) {
          return AlertDialog(
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es contenido de la caja de la alerta'),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Aceptar'),
              ),
            ],
            shape: RoundedRectangleBorder(),
          );
        },
        context: context);
  }
}

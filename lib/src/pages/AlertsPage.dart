import 'package:flutter/material.dart';

class AlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // onPressed: () => Navigator.of(context).pop(),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.keyboard_return),
      ),
      appBar: AppBar(title: Text('Pagina de alertas')),
      body: Center(
        child: ElevatedButton(
          // onPressed: () => _mostrarAlerta(context),
          onPressed: () {
            _mostrarAlerta(context);
          },
          child: Text('Mostrar alerta'),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(

          title: Text('Titulo de la alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text('Hola soy una alerta'), Icon(Icons.face)],
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
        );
      },
    );
  }
}

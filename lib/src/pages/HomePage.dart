import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List _pagesList = [
    {
      "title": "Alertas",
      "icon": Icons.add_alert,
      "route": "alerts"
    },
    {
      "title": "Avatars",
      "icon": Icons.accessibility,
      "route": "avatars"
    },
    {
      "title": "Cards - Tarjetas",
      "icon": Icons.folder_open,
      "route": "cards"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página principal'),
      ),
      body: ListView(
        children: _pagesList.map((item) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              title: Text(item['title']),
              leading: Icon(
                item['icon'],
                color: Colors.blue,
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          );
        }).toList(),
      ),
    );
  }
}

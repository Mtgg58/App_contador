import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _contador = 0; // Tu variable normal de toda la vida

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Principal'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/info'); // Va a la info
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clicks realizados:', style: TextStyle(fontSize: 20)),
            Text('$_contador', style: TextStyle(fontSize: 60)),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btnMenos',
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _contador--; // Restar
              });
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'btnReset',
            child: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _contador = 0; // Reiniciar
              });
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'btnMas',
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _contador++; // Sumar
              });
            },
          ),
        ],
      ),
    );
  }
}
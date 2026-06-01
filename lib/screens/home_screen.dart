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
        centerTitle: true, 
        backgroundColor: Colors.blue.shade700, 
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, size: 28), 
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
            Text('Clicks realizados:', style: TextStyle(fontSize: 20, color: Colors.grey.shade600)),
          
            Text(
              '$_contador', 
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.w300, color: Colors.blue.shade800)
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btnMenos',
            backgroundColor: Colors.blue.shade700, 
            foregroundColor: Colors.white,
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
            backgroundColor: Colors.blue.shade700,
            foregroundColor: Colors.white,
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
            backgroundColor: Colors.blue.shade700,
            foregroundColor: Colors.white,
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
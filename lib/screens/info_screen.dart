import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, size: 80, color: const Color.fromARGB(255, 226, 33, 243)),
            SizedBox(height: 10),
            Text('Nombre', style: TextStyle(fontSize: 22)),
            Text('Ingeniero', style: TextStyle(fontSize: 16)),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Regresar'),
              onPressed: () {
                Navigator.pop(context); // Regresa a la principal
              },
            ),
          ],
        ),
      ),
    );
  }
}
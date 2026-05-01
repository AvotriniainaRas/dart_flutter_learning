import 'package:flutter/material.dart';

class ExerciceCentrage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercice 1.1 - Centrage de TextField'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue[100],
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Méthode 1: Center',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
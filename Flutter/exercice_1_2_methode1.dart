import 'package:flutter/material.dart';

class CompteurTextField extends StatefulWidget {
  @override
  _CompteurTextFieldState createState() => _CompteurTextFieldState();
}

class _CompteurTextFieldState extends State<CompteurTextField> {
  final TextEditingController _controller = TextEditingController();
  int _charCount = 0;
  final int _maxLength = 50;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _charCount = _controller.text.length;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Compteur de caractères')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          maxLength: _maxLength,
          decoration: InputDecoration(
            labelText: 'Votre message',
            hintText: 'Écrivez ici...',
            border: OutlineInputBorder(),
            counterText: '${_charCount}/$_maxLength caractères',
            counterStyle: TextStyle(
              color: _charCount > _maxLength ? Colors.red : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          onChanged: (text) {
            setState(() {
              _charCount = text.length;
            });
          },
        ),
      ),
    );
  }
}
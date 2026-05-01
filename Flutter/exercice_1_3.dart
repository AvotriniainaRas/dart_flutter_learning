// SOLUTION PAS À PAS PLUS SIMPLE

class AdditionSimple extends StatefulWidget {
  @override
  _AdditionSimpleState createState() => _AdditionSimpleState();
}

class _AdditionSimpleState extends State<AdditionSimple> {
  final TextEditingController nombre1Controller = TextEditingController();
  final TextEditingController nombre2Controller = TextEditingController();
  
  int resultat = 0;
  
  void calculerAddition() {
    String text1 = nombre1Controller.text;
    String text2 = nombre2Controller.text;
    
    int nombre1 = int.parse(text1);
    int nombre2 = int.parse(text2);
    
    setState(() {
      resultat = nombre1 + nombre2;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Addition Simple')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Premier TextField avec son contrôleur
            TextField(
              controller: nombre1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nombre 1'),
            ),
            
            // Deuxième TextField avec son contrôleur
            TextField(
              controller: nombre2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nombre 2'),
            ),
            
            ElevatedButton(
              onPressed: calculerAddition,
              child: Text('Additionner'),
            ),
            
            Text('Résultat: $resultat', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
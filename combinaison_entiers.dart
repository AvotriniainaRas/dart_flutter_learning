import 'dart:io';

List<List<int>> trouverPairesSomme(List<int> liste, int somme) {
  List<List<int>> resultat = [];
  Set<int> nombresVus = {};

  for (int nombre in liste) {
    int complement = somme - nombre;
    
    if (nombresVus.contains(complement)) {
      resultat.add([complement, nombre]);
    }
    
    nombresVus.add(nombre);
  }
  
  return resultat;
}

void main() {
  List<int> exemple = [2, 4, 6, 3, 1, 5];
  int sommeCible = 7;
  
  print("Liste d'entrée : $exemple");
  print("Somme recherchée : $sommeCible");
  print("Résultat : ${trouverPairesSomme(exemple, sommeCible)}");
  
  try {
    stdout.write("\nEntrez les nombres (séparés par des virgules) : ");
    String? inputNombres = stdin.readLineSync();
    
    stdout.write("Entrez la somme cible : ");
    String? inputSomme = stdin.readLineSync();
    
    if (inputNombres != null && inputSomme != null) {
      List<int> nombres = inputNombres.split(',').map((e) => int.parse(e.trim())).toList();
      int cible = int.parse(inputSomme);
      
      List<List<int>> paires = trouverPairesSomme(nombres, cible);
      
      print("\nRésultat : $paires");
    }
  } catch (e) {
    print("Erreur de saisie : $e");
  }
}
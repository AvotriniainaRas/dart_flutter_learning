import 'dart:io';

void main() {
  print("Suite de Fibonacci");
  
  stdout.write("Entrez le nombre n (nombres de Fibonacci à afficher) : ");
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print("Erreur : Veuillez entrer un nombre valide.");
    return;
  }
  
  int? n = int.tryParse(input);
  
  if (n == null || n <= 0) {
    print("Erreur : Veuillez entrer un entier positif (n > 0).");
    return;
  }
  
  // Affichage des n premiers nombres de Fibonacci
  print("\nLes $n premiers nombres de la suite de Fibonacci sont :");
  
  List<int> fibonacci = obtenirFibonacci(n);
  
  for (int i = 0; i < fibonacci.length; i++) {
    print("${i + 1}. ${fibonacci[i]}");
  }
}

List<int> obtenirFibonacci(int n) {
  List<int> resultat = [];
  
  for (int i = 0; i < n; i++) {
    if (i == 0) {
      resultat.add(0);
    } else if (i == 1) {
      resultat.add(1);
    } else {
      resultat.add(resultat[i - 1] + resultat[i - 2]);
    }
  }
  
  return resultat;
}
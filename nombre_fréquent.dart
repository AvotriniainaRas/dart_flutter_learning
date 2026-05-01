int nombreLePlusFrequent(List<int> nombres) {
  // Gérer le cas d'une liste vide
  if (nombres.isEmpty) {
    throw Exception('La liste ne peut pas être vide');
  }
  
  // Créer une Map pour compter les fréquences
  Map<int, int> frequences = {};
  
  // Parcourir chaque nombre et compter ses occurrences
  for (int nombre in nombres) {
    if (frequences.containsKey(nombre)) {
      // Si le nombre existe déjà, incrémenter son compteur
      frequences[nombre] = frequences[nombre]! + 1;
    } else {
      // Sinon, l'ajouter avec un compteur à 1
      frequences[nombre] = 1;
    }
  }
  
  // Trouver le nombre avec la fréquence maximale
  int nombreMax = nombres[0]; // Valeur par défaut
  int frequenceMax = 0;
  
  frequences.forEach((nombre, frequence) {
    if (frequence > frequenceMax) {
      frequenceMax = frequence;
      nombreMax = nombre;
    }
  });
  
  return nombreMax;
}

// Test de la fonction
void main() {
  List<int> liste1 = [1, 3, 2, 3, 4, 3, 5];
  print(nombreLePlusFrequent(liste1));
  
  List<int> liste2 = [1, 1, 2, 2, 2, 3, 3];
  print(nombreLePlusFrequent(liste2));
}
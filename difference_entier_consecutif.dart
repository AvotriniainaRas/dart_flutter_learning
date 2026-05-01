int plusGrandeDifferenceConsecutive(List<int> nombres) {
  
  if (nombres.length < 2) {
    throw Exception('La liste doit contenir au moins 2 nombres');
  }
  
  // Initialiser avec la différence entre les deux premiers nombres
  int maxDifference = (nombres[1] - nombres[0]).abs();
  
  // Parcourir les paires consécutives
  for (int i = 1; i < nombres.length - 1; i++) {
    int difference = (nombres[i + 1] - nombres[i]).abs();
    if (difference > maxDifference) {
      maxDifference = difference;
    }
  }
  
  return maxDifference;
}

void main() {
  // Tests
  List<int> liste1 = [1, 5, 3, 8, 2];
  print('Liste: $liste1');
  print('Plus grande différence: ${plusGrandeDifferenceConsecutive(liste1)}');
  print('');
  
  List<int> liste2 = [10, 20, 15, 30, 25];
  print('Liste: $liste2');
  print('Plus grande différence: ${plusGrandeDifferenceConsecutive(liste2)}');
}
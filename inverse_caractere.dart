String transformerChaineOptimisee(String input) {
  // Convertir la chaîne en liste modifiable
  List<String> chars = input.split('');
  
  // Extraire et inverser les chiffres
  List<String> chiffres = chars.where((char) => char.contains(RegExp(r'[0-9]'))).toList().reversed.toList();
  
  // Parcourir et transformer
  int chiffreIndex = 0;
  for (int i = 0; i < chars.length; i++) {
    String char = chars[i];
    
    if (RegExp(r'[a-z]').hasMatch(char)) {
      chars[i] = char.toUpperCase();
    } 
    else if (RegExp(r'[A-Z]').hasMatch(char)) {
      chars[i] = char.toLowerCase();
    }
    else if (RegExp(r'[0-9]').hasMatch(char)) {
      chars[i] = chiffres[chiffreIndex++];
    }
  }
  
  return chars.join('');
}

void main() {
  // Exemple 1
  String exemple1 = "a1b2c3";
  print("Entrée : $exemple1");
  print("Sortie : ${transformerChaineOptimisee(exemple1)}\n");
  
  // Exemple 2
  String exemple2 = "Hello123World";
  print("Entrée : $exemple2");
  print("Sortie : ${transformerChaineOptimisee(exemple2)}");
}
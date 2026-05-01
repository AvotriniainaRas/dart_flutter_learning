import 'dart:io';

void main() {
  stdout.write("Entrez une phrase : ");
  String? phrase = stdin.readLineSync();
  
  if (phrase != null && phrase.isNotEmpty) {
    int compteur = 0;
    String voyelles = "aeiouyAEIOUY";
    
    for (int i = 0; i < phrase.length; i++) {
      if (voyelles.contains(phrase[i])) {
        compteur++;
      }
    }
    
    print("\nPhrase : \"$phrase\"");
    print("Nombre de voyelles : $compteur");
  } else {
    print("Erreur : Veuillez entrer une phrase valide.");
  }
}
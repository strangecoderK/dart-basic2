class Word {
  String word = '';

  Word(this.word);

  bool isVowel(int i) {
    return word.substring(i, i + 1) == 'a' ||
        word.substring(i, i + 1) == 'e' ||
        word.substring(i, i + 1) == 'i' ||
        word.substring(i, i + 1) == 'o' ||
        word.substring(i, i + 1) == 'u';
  }
}

void main() {
  Word word = Word('elephant');
  bool result = word.isVowel(2);
  print(result);
}

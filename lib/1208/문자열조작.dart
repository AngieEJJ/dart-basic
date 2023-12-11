class Word {
  String word = 'apple'; //1번
  final List<String> strList = ['a', 'e', 'i', 'o', 'u'];

  bool isVowel(int i) {//2번
    return strList.contains(word.substring(i, i + 1));
  }

  bool isConsonant(int i) {//3번
    return !isVowel(i);
  }
}

void main() {
  final wordChk = Word();

  for (int i = 0; i < wordChk.word.length; i++) {
    String chkWord = wordChk.word.substring(i, i+1);//
    print('$chkWord is Vowel : ${wordChk.isVowel(i)}'); //
    print('$chkWord is Consonant : ${wordChk.isConsonant(i)}');
  }
}
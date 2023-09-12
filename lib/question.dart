class Question{
  late String questionText;
  late String choseA;
  late String choseB;
  late String choseC;
  late String choseD;
  late String questionAnswer;

  Question({required String q,required String a,required String b,required String c,required String d,required String ra}){

    questionText = q;
    choseA = a;
    choseB = b;
    choseC = c;
    choseD = d;
    questionAnswer = ra;
  }
}
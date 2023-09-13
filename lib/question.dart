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
// Expanded(
// flex: 5,
// child: Padding(
// padding: const EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 10),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Expanded(
// child: Padding(
// padding: const EdgeInsets.only(top: 1,bottom: 1),
// child: Text(
// questionBank[no].choseA,
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 15.0,
// color: Colors.black87,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// ),
// Expanded(
// child: Padding(
// padding: const EdgeInsets.only(top: 1,bottom: 1),
// child: Text(
// questionBank[no].choseB,
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 15.0,
// color: Colors.black87,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// ),
// Expanded(
// child: Padding(
// padding: const EdgeInsets.only(top: 1,bottom: 1),
// child: Text(
// questionBank[no].choseC,
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 15.0,
// color: Colors.black87,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// ),
// Expanded(
// child: Padding(
// padding: const EdgeInsets.only(top: 1,bottom: 1),
// child: Text(
// questionBank[no].choseD,
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 15.0,
// color: Colors.black87,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// ),
// ],
// ),
// ))
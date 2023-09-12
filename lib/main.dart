import 'package:flutter/material.dart';
import 'package:mcqs_quiz_app/question.dart';

// QuizBrain quizbrian = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xbfffc219),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> score = [];






  List<Question> questionBank = [
    Question(q:"1) Who developed Python Programming Language?",a:"a) Wick van Rossum",b:"b) Rasmus Lerdorf",c:"c) Guido van Rossum",d:"d) Niene Stom",ra:"C"),
    Question(q:"2) Which type of Programming does Python support?",a:"a) object-oriented programming",b:"b) structured programming",c:"c) functional programming",d:"d) all of the mentioned",ra:"D"),
    Question(q:"3. Is Python case sensitive when dealing with identifiers?",a:" a) no",b:" b) yes",c:"c) machine dependent",d:"d) none of the mentioned",ra:"B"),
    Question(q:"",a:"",b:"",c:"",d:"",ra:"C"),

  ];


  int no = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(top: 40,right: 15,left: 15,bottom: 50),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(120),
                    topLeft:  Radius.circular(120),
                    topRight:Radius.circular(120),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amberAccent,
                      blurRadius:5,
                      spreadRadius: 1,
                    )
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex:3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50 ),
                          child: Text(
                            questionBank[no].questionText,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 1,bottom: 1),
                                child: Text(
                                  questionBank[no].choseA,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 1,bottom: 1),
                                child: Text(
                                  questionBank[no].choseB,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 1,bottom: 1),
                                child: Text(
                                  questionBank[no].choseC,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 1,bottom: 1),
                                child: Text(
                                  questionBank[no].choseD,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffFFC900),
                      ),
                      child: Text(
                        'A',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        String correct = questionBank[no].questionAnswer;
                        if (correct == "A"){
                          print("user got it right");
                        }else{
                          print("user got it wrong");
                        }
                        setState(() {
                          no++;
                        });
                        //The user picked true.
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.amberAccent
                      ),
                      child: Text(
                        'B',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        String correct = questionBank[no].questionAnswer;
                        if (correct == "B"){
                          print("user got it right");
                        }else{
                          print("user got it wrong");
                        }
                        setState(() {
                          no++;
                        });
                        //The user picked false.
                      },
                    ),
                  ),
                ),
              ],),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15,right: 15,bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.amberAccent
                      ),
                      child: Text(
                        'C',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        String correct = questionBank[no].questionAnswer;
                        if (correct == "C"){
                          print("user got it right");
                        }else{
                          print("user got it wrong");
                        }
                        setState(() {
                          no++;
                        });
                        //The user picked true.
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffFFC900),
                      ),
                      child: Text(
                        'D',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        String correct = questionBank[no].questionAnswer;
                        if (correct == "D"){
                          print("user got it right");
                        }else{
                          print("user got it wrong");
                        }
                        setState(() {
                          no++;
                        });
                        //The user picked false.
                      },
                    ),
                  ),
                ),
              ],),
          ),
        ),
        Row(
          children: score,
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}

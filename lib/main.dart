import 'package:flutter/material.dart';
import 'quizbrain.dart';

QuizBrain quizbrian = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "M.C.Q.S Quiz",
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

  void checkAnswer(String userPickedAnswer) {
    String correct = quizbrian.getQuestionAnswer();
    if (userPickedAnswer == correct) {
      setState(() {
        score.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      });
    } else {
      setState(() {
        score.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      });
    }
    setState(() {
      quizbrian.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(top: 40, right: 15, left: 15, bottom: 50),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(120),
                    topLeft: Radius.circular(120),
                    topRight: Radius.circular(120),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amberAccent,
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      quizbrian.getQuestionText(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
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
                        quizbrian.getChoseA(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer("A");
                        //The user picked true.
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.amberAccent),
                      child: Text(
                        quizbrian.getChoseB(),
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer("B");
                        //The user picked false.
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.amberAccent),
                      child: Text(
                        quizbrian.getChoseC(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer("C");
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
                        quizbrian.getChoseD(),
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer("D");
                        //The user picked false.
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: score,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

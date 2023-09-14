import 'question.dart';

class QuizBrain{
  List<Question> _questionBank = [
    Question(
        q:"1) Who developed Python Programming Language?",
        a:"A) Wick van Rossum",
        b:"B) Rasmus Lerdorf",
        c:"C) Guido van Rossum",
        d:"D) Niene Stom",
        ra:"C"
    ),
    Question(
        q:"2) Which type of Programming does Python support?",
        a:"A) object-oriented programming",
        b:"B) structured programming",
        c:"C) functional programming",
        d:"D) all of the mentioned",
        ra:"D"
    ),
    Question(
        q:"3) Is Python case sensitive when dealing with identifiers?",
        a:"A) no",
        b:" B) yes",
        c:"C) machine dependent",
        d:"D) none of the mentioned",
        ra:"B"
    ),
    Question(
        q:"4. Which of the following is the correct extension of the Python file?",
        a:"a) .python",
        b:"b) .pl",
        c:"c) .py",
        d:"d) .p",
        ra:"C"
    ),
    Question(
        q: "5. Is Python code compiled or interpreted?",
        a: "a) Python code is both compiled and interpreted",
        b: "b) Python code is neither compiled nor interpreted",
        c: "c) Python code is only compiled",
        d: "d) Python code is only interpreted",
        ra: "A"
    ),
    Question(
        q: "6. All keywords in Python are in _________",
        a: "a) Capitalized",
        b: "b) lower case",
        c: "c) UPPER CASE",
        d: "d) None of the mentioned",
        ra: "D"
    ),
    Question(
        q: "7. What will be the value of the following Python expression?\n\n4 + 3 % 5",
        a: "a) 7",
        b: "b) 2",
        c: "c) 4",
        d: "d) 1",
        ra: "A"
    ),
    Question(
        q: "8. Which of the following is used to define a block of code in Python language?",
        a: "a) Indentation",
        b: "b) Key",
        c: "c) Brackets",
        d: "d) All of the mentioned",
        ra: "A"
    ),
    Question(
        q: "9. Which keyword is used for a function in Python language?",
        a: "a) Function",
        b: "b) def",
        c: "c) Fun",
        d: "d) Define",
        ra: "B"
    ),
    Question(
        q: "10. Which of the following character is used to give single-line comments in Python?",
        a: "a) //",
        b: "b) #",
        c: "c) !",
        d: "d) /*",
        ra: "B"
    ),
    Question(q:"",a:"",b:"",c:"",d:"",ra:"C"),
  ];
  String getQuestionText(int questionNubmer){
    return _questionBank[questionNubmer].questionText;
  }
  String getQuestionAnswer(int questionNubmer){
    return _questionBank[questionNubmer].questionAnswer;
  }
  String getChoseA(int questionNubmer){
    return _questionBank[questionNubmer].choseA;
  }
  String getChoseB(int questionNubmer){
    return _questionBank[questionNubmer].choseB;
  }
  String getChoseC(int questionNubmer){
    return _questionBank[questionNubmer].choseC;
  }
  String getChoseD(int questionNubmer){
    return _questionBank[questionNubmer].choseD;
  }
}
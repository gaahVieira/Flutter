import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/*
void main(){
  //-função para rodar o aplicativo MyApp
  runApp(MyApp());
}
*/
//class

void main () => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

  class _MyAppState extends State<MyApp>{

    //method & função

    var _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text' : 'Black', 'score': 10},
          {'text' : 'Red', 'score': 5},
          {'text' : 'Green', 'score': 3},
          {'text' : 'White', 'score': 1},
        ],
      },
      {
        'questionText':'What\'s your favorite animal?',
        'answers': [
          {'text' : 'Rabbit', 'score': 3},
          {'text' : 'Snake', 'score': 11},
          {'text' : 'Elephant', 'score': 5},
          {'text' : 'Lion', 'score': 9},
        ],
      },
      {
        'questionText':'What kind of movies do you like??',
        'answers': [
          {'text' : 'Comedies', 'score': 1},
          {'text' : 'Musicals', 'score': 1},
          {'text' : 'Suspenses', 'score': 1},
          {'text' : 'Horrors', 'score': 1},
        ],
      },
    ];

    var _questionIndex = 0;
    var _totalScore = 0;

    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }

    void _answerQuestion(int score){
      _totalScore +=  score;
      //funcao da clase State
      setState((){
        _questionIndex = _questionIndex + 1;
      });

      print(_questionIndex);

      if(_questionIndex < _questions.length){
        print('We have more questions!');
      }else{
        print('No more question');
      }
    }

  @override
  Widget build(BuildContext context){


    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),
            ),
          );
    }
}

//Scaffold - formatação padrao do app
//appBar - paramentro do scafffold para escrita


//first class
/*class Person{
  String name;
  int age;

  //constructor
  Person({this.name, this.age}){
  }
}

//Função
addNumbers(double num1,double num2){
  return num1 + num2;
}

void main (){
  var p1 = Person(name: 'Max',age: 30);
  var p2 = Person(name: 'Manu',age: 31);
  print(p1.name);
  print(p2.name);
  double firstResult;
  firstResult = addNumbers(1,2);
  //.....
  print(firstResult + 1);
  print("Hello!");
}
//Função de inicialização do sistema.

 */
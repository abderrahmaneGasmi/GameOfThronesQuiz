import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
{
      'questionText': 'What do you think of money?',
      'answers': [{'text':"Money is not important to happiness.",'score':0}, 
        {'text':"It's nice to have money. Money can help.",'score':1},
       {'text':"I love money, it gives me security and lets me have nice things",'score':2}, 
       {'text':"I believe money is the most important thing. Money solves all the problems",'score':3}],
    },
    {
      'questionText': 'What strategy would you use to rule the world?',
      'answers': [{'text':"Quite simply, if you don't follow me, I will publicly torture you to death ",'score':14}, 
        {'text':"I would marry a witch or warlock in the hope that give me power",'score':11},
       {'text':"I'd help the people I liked, and betray the ones who challenged me.",'score':12}, 
       {'text':"I would empower all the oppressed people of the world in the hope that they would be grateful and support me",'score':10}],
    },
    {
      'questionText': 'How far would you go to honor your family?',
      'answers': [{'text':"I hate my family. I'd marry a stranger and abandon my name.",'score':53}, 
        {'text':"I don't hate my family but I won't sacrifice myself for the family",'score':52},
       {'text':"I could give up a lot for my family, but not my life",'score':51}, 
       {'text':"Anything at all - I would DIE for my family!",'score':50}],
    },
     {
      'questionText': 'You are a boss of a large company. What qualities would you look for when hiring a manager?',
      'answers': [{'text':"A kind person with good manners",'score':40}, 
        {'text':"A person without much experience but with great passion to learn",'score':41},
       {'text':"Clever, with a touch of ruthlessness",'score':42}, 
       {'text':"Would sell his grandpa to increase sales",'score':43}],
    },
         {
      'questionText': 'You are taking a walk on the beach and pick up a bag with 10,000 dollars in it. What do you do?',
      'answers': [{'text':"I use it to purchase a gun so I could rob a bank and get even more money.",'score':13}, 
        {'text':"I would keep it for my own",'score':12},
       {'text':"I would take half, and donate the other half to a good cause.",'score':11}, 
       {'text':"I would take it to the police - it's either stolen money or someone dropped it",'score':10}],
    },
    {
      'questionText': 'Which one of these countries would you prefer to rule?',
      'answers': [{'text':"Lichtenstein - Small and friendly. They are happy as they are.",'score':60}, 
        {'text':"Cuba - Many resources, close to the U.S., and eager to grow.",'score':61},
       {'text':"India - Huge, Poor, with lots and lots of people. But they also have many resources, and with my leadership could lead the world.",'score':62}, 
       {'text':"The United States - Large, powerful, but needs a lot of work to maintain its standing.",'score':63}],
    },
    {
      'questionText': 'Who would you trust most?',
      'answers': [{'text':"Nobody",'score':13}, 
        {'text':"My best friend at school",'score':11},
       {'text':"A person with a lot of friends",'score':12}, 
       {'text':"My parents",'score':10}],
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

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Game of thrones quiz'),
          backgroundColor: Colors.grey[600],
          centerTitle: true,
          actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.android,
        color: Colors.lightGreen[600],
      ),
      onPressed: null,
    )
  ],
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

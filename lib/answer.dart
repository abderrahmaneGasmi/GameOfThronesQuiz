import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.indigo[700],
        textColor: Colors.white,
        child: Container(child:Text(answerText,style: TextStyle(fontSize:19), ),padding:EdgeInsets.symmetric(vertical: 10,horizontal: 7,  )),
        onPressed: selectHandler,
      ),
    );
  }
}

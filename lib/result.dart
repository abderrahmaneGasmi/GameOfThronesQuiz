import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;

  Result(this.score, this.resetHandler);

  List get resultText {
    var resultText = new List(3);
    if (score == 182) {
      resultText[0] = "You Are from  House Arryn";
      resultText[1] = "You and your people are strong warriors, and proud of your heritage. Though not large";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/b/b4/House_Arryn.svg/250px-House_Arryn.svg.png";
    } else if (score < 184) {
      resultText[0] = "You Are from House Tully";
      resultText[1] = "you are strong, noble, and never give up. You are a good, honest person who loves home and family";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/6/61/House_Tully.svg/250px-House_Tully.svg.png";

    } else if (score < 186) {
      resultText[0] = "You Are from House Tyrell";
      resultText[1] = "You are breathtakingly clever, attractive, and quietly ambitious.";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/3/31/House_Tyrell.svg/250px-House_Tyrell.svg.png";
    
    } else if (score < 188) {
      resultText[0] = "House Greyjoy!";
      resultText[1] = "You are feared by your enemies,with the most formidable navy of all the houses. You do not value the trapping of wealth";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/5/5b/House_Greyjoy.svg/250px-House_Greyjoy.svg.png";    
    } else if (score < 190) {
      resultText[0] = "You Are from House Stark";
      resultText[1] = "You are kind, smart, and noble and strikingly attractive. While life seems to be particularly harsh for you,";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/7/7e/House_Stark.svg/250px-House_Stark.svg.png";    
    
    } else if (score < 192) {
      resultText[0] = "You are from House Baratheon";
      resultText[1] = "you protect your family and you dont like Injustice and You fight for what you think it is right";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/2/2d/House_Baratheon.svg/250px-House_Baratheon.svg.png";    
    
    } else if (score < 194) {
      resultText[0] = "You are a member ofHouse Targaryen";
      resultText[1] = "You are hot tempered and lusty, but have a loving and close clan. You can be proud of the claim that you have never actually been conquered";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/1/1e/House_Targaryen.svg/250px-House_Targaryen.svg.png";    
    
    } else if (score < 197) {
      resultText[0] = "You are from House Lannister";
      resultText[1] = "You are attractive, smart, rich, and cunning. And cRaZy.";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/d/d5/House_Lannister.svg/250px-House_Lannister.svg.png";    

    }
    else if (score < 198) {
      resultText[0] = "You are a member of House Bolton";
      resultText[1] = "You are sadistic who enjoy hurting people and have no manners";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/0/0c/House_Bolton.svg/250px-House_Bolton.svg.png";    
    
    } else {
      resultText[0] = "You are from House Frey";
      resultText[1] = " You are wicked, power-hungry, and do not keep your promises. If you want something, you will do anything to have it. ";
      resultText[2] = "https://awoiaf.westeros.org/images/thumb/d/da/House_Frey.svg/250px-House_Frey.svg.png";    
    
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText[0],
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
                child: Image.network(
                resultText[2],

  ),
),
          Text(
            resultText[1],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text(
              'Restart Quiz!',
            ),
            color: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}

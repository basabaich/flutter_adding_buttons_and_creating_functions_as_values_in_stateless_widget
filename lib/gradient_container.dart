//
//File: gradient_container.dart
//

import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //
  GradientContainer(this.color1, this.color2, {super.key});
  //
  //
  GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;
//
//
  final Color color1;
  final Color color2;
//
//
  var activeDiceImage = 'assets/images/dice-1.png';
  //This is a variable which is initially taking the path of our image i.e. by
  //default. That means if it is called by some method, this variable will
  //return the path of that particular image or that image itself if the method
  //have the possibility to display image.
  //Similarly when, this variable value changes, it can return any other value
  //or any other image path.
  //IMPORTANT: Also note, the moment we use a variable within a class, the
  //constructor will not become "const" but also a variable. So, from the
  //following lines the "const" prefix needed be removed:
  //
  //"const GradientContainer.purple({super.key})......" &
  //"const GradientContainer(this.color1, this.color2, {super.key});"
  //
  void rollDice() {
    //...
    activeDiceImage = 'assets/images/dice-4.png';
    print('changing image...');
  }

  //We have defined function "rollDice" here so that a method is called and
  //a value is passed to this function whenever the "TextButton" is pressed
  //below.
  //
  //
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ), //LinearGradient
      ), //BoxDecoration
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              //'assets/images/dice-1.png',
              activeDiceImage,
              //We will remove the line "assets/images/dice-1.png" here & will
              //use the predefined function pointer instead. this is where, it
              //takes different values and displays different images.
              //
              //
              width: 90,
            ), //image.asset
            TextButton(
              onPressed: rollDice,
              //Here "rollDice is a function which can pass a value"
              //
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20.0),
                  foregroundColor: Colors.amber[900]),
              child: const Text('Roll Dice!'),
            ), //TextButton
          ],
        ), //Column
      ), //Center
    ); //Container
  }
}

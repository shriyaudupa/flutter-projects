

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return  Center(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Image.asset('assets/images/quiz-logo.png',
            width:300,
            color:const Color.fromARGB(150,255,255,255)),

        //Opacity(
         // opacity:0.8,
          //child:Image.asset('assets/images/quiz-logo.png',
          //  width:300,),
            const SizedBox(height:50),
            const Text('Learn Flutter the fun way',
            style:TextStyle(
              color:Colors.white,
              fontSize: 24,
            )),
            const SizedBox(height:50),
            OutlinedButton.icon(
                onPressed: startQuiz,
                style:OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon:const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz')
            )
          ],

        )
    );
  }
}

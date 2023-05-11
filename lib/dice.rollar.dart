import 'package:flutter/material.dart';
import 'dart:math';

final randomizer=Random();
class DiceRollar extends StatefulWidget{
  const DiceRollar({super.key});

  @override
  State<DiceRollar> createState(){
    return _DiceRollar();

  }
}

class _DiceRollar extends State<DiceRollar>{
  var currentdiceroll=2;
  
  void rolldice() {
    //..
    setState(() {
      currentdiceroll=randomizer.nextInt(6) + 1;
    });
  }
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$currentdiceroll.png', width: 150),
            const SizedBox(height: 100),
            TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
               // padding: const EdgeInsets.only(top: 30), or we can size box for padding
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 29),
              ) // or you can use anonymous funtion a function without its name() {}
              ,
              child: const Text('Roll dice'),
            )
          ],
        );
  }
}
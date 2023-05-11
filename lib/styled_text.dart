

import 'package:flutter/material.dart';

class Styledtext extends StatelessWidget{
  const Styledtext(this.text,{super.key});
  final String text;
  @override
  Widget build(context){
    return  Text(
               text ,
              //'hello world',
              style: const TextStyle(color: Colors.yellow, fontSize: 29),
            );
  }
}
import 'package:first_app/dice.rollar.dart';
import 'package:flutter/material.dart';

var left = Alignment.topLeft;
var right = Alignment.topRight;


//statelessWidget it means ui data cannot be changed but statefullWidget means data can be changed

class GradientContainer extends StatelessWidget {
 const  GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: const [
          Color.fromARGB(255, 122, 5, 211),
          Color.fromARGB(255, 21, 75, 23)
        ], begin: left, end: right),
      ),
      child: const Center(
        child: DiceRollar(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: GradientContainer(),
//       ),
//     ),
//   );
// }

// class GradientContainer extends StatelessWidget
// {
//   const GradientContainer({super.key});

//   @override
//   Widget build(context) {
//     return  Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.green, Colors.blue],
//               begin: Alignment.topLeft,
//               end:Alignment.topRight,
//             ),
//           ),
//           child: const Center(
//             child: Text(
//               'hello world',
//               style: TextStyle(color: Colors.white, fontSize: 28),
//             ),
//           ),
//         );
//   }
// }
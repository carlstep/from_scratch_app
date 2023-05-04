import 'package:flutter/material.dart';
import 'package:from_scratch_app/dice_roller.dart';
import 'package:from_scratch_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// class HelloWorldContainer extends the class StatelessWidget
class HelloWorldGradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;

  // the class constructor, with the key ({named parameter})!
  const HelloWorldGradientContainer({
    // the key, with super, refers to the StatelessWidget class constructor
    super.key,
    required this.color1,
    required this.color2,
  });

  // @override - overrides the method functions
  @override
  // the build() {} method, which is type Widget, must have a parameter (context)
  Widget build(BuildContext context) {
    // return the body, a Container in this case, which is the type
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}




// // class HelloWorldContainer extends the class StatelessWidget
// class HelloWorldGradientContainer extends StatelessWidget {
//   final List<Color> colors;
//   // the class constructor, with the key ({named parameter})!
//   const HelloWorldGradientContainer({
//     // the key, with super, refers to the StatelessWidget class constructor
//     super.key,
//     required this.colors,
//   });
//   // @override - overrides the method functions
//   @override
//   // the build() {} method, which is type Widget, must have a parameter (context)
//   Widget build(BuildContext context) {
//     // return the body, a Container in this case, which is the type
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             colors,
//           ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             StyledText('Hello World!'),
//             SizedBox(
//               height: 20,
//             ),
//             StyledText('Hello Flutter!'),
//           ],
//         ),
//       ),
//     );
//   }
// }

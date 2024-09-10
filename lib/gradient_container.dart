import 'package:flutter/material.dart';
import 'package:dice_roller/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText('whassup?'),
      ),
    );
  }
}

// another way of doing it that I didn't like as much

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});
//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('whassup?'),
//       ),
//     );
//   }
// }

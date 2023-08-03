import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.gender});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        const SizedBox(
          height: 15.0,
        ),
        Text(gender, style: kLabelTextStyle),
      ],
    );
  }
}

// class RoundIconButton extends StatelessWidget {

//   const RoundIconButton({super.key, required this.icon, required this.action});

//   final IconData icon;
//   final VoidCallback action;

//   @override
//   Widget build(BuildContext context) {
//     return  RawMaterialButton(
//       shape: const CircleBorder(),
//       fillColor: const Color(0xFF4C4F5E),
//       constraints: const BoxConstraints.tightFor(
//         width: 56,
//         height: 56,
//         ),
//       elevation: 0.0,
//       onPressed: action,
//       child: Icon(icon),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'constants.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key, required this.weight, required this.label});
  final int weight;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          weight.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFF4C4F5E),
              child: const Icon(Icons.remove, color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFF4C4F5E),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}



// Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children:
//       const Text(
//         'WEIGHT',
//         style: kLabelTextStyle,
//       ),
//       Text(
//         weight.toString(),
//         style: kNumberTextStyle,
//       ),
//       Row(
//         children: <Widget>[
//                           FloatingActionButton(
//                             onPressed: (){},
//                             backgroundColor: const Color(0xFF4C4F5E),
//                             child: const Icon(Icons.add,color: Colors.white),),
//                           const SizedBox(width: 10,),
//                           FloatingActionButton(
//                             onPressed: (){},
//                             backgroundColor: const Color(0xFF4C4F5E),
//                             child: const Icon(Icons.add, color: Colors.white),),],),],
//                           ),
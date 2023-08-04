import 'package:flutter/material.dart';

import '../controllers/calculator_brain.dart';
import '../share/constants.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton(
      {super.key,
      required this.label,
      required this.brain,
      required this.isAge});

  final String label;
  final CalculatorBrain brain;
  final bool isAge;

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  int value = 0;

  @override
  void initState() {
    widget.isAge ? value = widget.brain.age : value = widget.brain.weight;

    //value = widget.brain.weight;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.label,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                setState(() {
                  value--;
                  widget.isAge
                      ? widget.brain.age = value
                      : widget.brain.weight = value;
                });
              },
              backgroundColor: const Color(0xFF4C4F5E),
              child: const Icon(Icons.remove, color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                setState(() {
                  value++;
                  widget.isAge
                      ? widget.brain.age = value
                      : widget.brain.weight = value;
                });
              },
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
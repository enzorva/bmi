import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: Color(0xFF1D1E33),
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({super.key, required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      //height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      child: const Text(''),
    );
  }
}

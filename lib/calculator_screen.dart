import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => CalculatorScreenState();
}

class CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "123456789", 
            style: TextStyle(fontSize: 70,
             decoration: TextDecoration.none,
              color: Colors.white)),
          ),
          Expanded(
            flex: 6,
            child: Placeholder())
        ],
      )
    );
  }
}

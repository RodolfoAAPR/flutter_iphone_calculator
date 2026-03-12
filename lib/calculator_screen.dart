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
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              child: Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "123456789",
                    style: TextStyle(
                      fontSize: 70,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        getButton("AC"),
                        getButton("()"),
                        getButton("%"),
                        getOperationButton("/"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        getButton("7"),
                        getButton("8"),
                        getButton("9"),
                        getOperationButton("/"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        getButton("AC"),
                        getButton("()"),
                        getButton("%"),
                        getOperationButton("/"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        getButton("AC"),
                        getButton("()"),
                        getButton("%"),
                        getOperationButton("/"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        getButton("AC"),
                        getButton("()"),
                        getButton("%"),
                        getOperationButton("/"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getButton(String text, {Color color = Colors.white}) {
    return Expanded(
      flex: 1,
      child: FloatingActionButton(
        backgroundColor: color,
        onPressed: () {},
        child: Text(text),
        shape: CircleBorder(),
      ),
    );
  }

  Widget getOperationButton(String text) {
    return getButton(text, color: Colors.deepOrange);
  }
}

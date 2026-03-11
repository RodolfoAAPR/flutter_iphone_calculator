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
                        getButton("/"),
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
                        getButton("/"),
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
                        getButton("/"),
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
                        getButton("/"),
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
                        getButton("/"),
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

  Widget getButton(String text) {
    return Expanded(
      flex: 1,
      child: FloatingActionButton(onPressed: () {}, child: Text(text)),
    );
  }
}

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.deepPurpleAccent,
            child: Column(
              children: [
                // First Container
                Container(
                  color: Colors.deepOrange,
                  height: 400,
                  width: 400,
                  child: Center(
                    child: Text(
                      " ",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),

                buttonRow("1", "2", "3", "/"),
                buttonRow("4", "5", "6", "*"),
                buttonRow("7", "8", "9", "-"),
                buttonRow("C", "0", "=", "+"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonRow(String label1, String label2, String label3, String label4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Spacer for dynamic spacing
        SizedBox(width: MediaQuery.of(context).size.width * 0.08),

        // Buttons
        buildButton(label1),
        buildButton(label2),
        buildButton(label3),
        buildButton(label4),

        // Spacer for dynamic spacing
        SizedBox(width: MediaQuery.of(context).size.width * 0.08),
      ],
    );
  }

  Widget buildButton(String label) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          print(label);
        },
        child: Text(label),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(70, 70),
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/pages/button.dart';
import 'package:math_expressions/math_expressions.dart';

class Konversi extends StatefulWidget {
  const Konversi({super.key});

  @override
  State<Konversi> createState() => _KonversiState();
}

class _KonversiState extends State<Konversi> {
  var userInput = "";
  var userAnswer = "";

  final List<String> buttons = [
    "C",
    "DEL",
    "%",
    "/",
    "9",
    "8",
    "7",
    "x",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "ANS",
    "="
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    userInput,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Text(userAnswer, style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
          )),
          Expanded(
              flex: 2,
              child: Container(
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (BuildContext context, int index) {
                      //Clear Button
                      if (index == 0) {
                        return MyButton(
                          buttonTapped: () {
                            setState(() {
                              userInput = "";
                            });
                          },
                          buttonText: buttons[index],
                          color: Color.fromARGB(255, 223, 28, 28),
                          textColor: Colors.white,
                        );

                        //Delete Button
                      } else if (index == 1) {
                        return MyButton(
                          buttonTapped: () {
                            setState(() {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                            });
                          },
                          buttonText: buttons[index],
                          color: Color.fromARGB(255, 244, 238, 54),
                          textColor: Colors.white,
                        );
                      }

                      //Equal Button
                      else if (index == buttons.length - 1) {
                        return MyButton(
                          buttonTapped: () {
                            setState(() {
                              equalPressed();
                            });
                          },
                          buttonText: buttons[index],
                          color: isOperator(buttons[index])
                              ? Color.fromARGB(255, 40, 99, 175)
                              : Colors.grey[200],
                          textColor: isOperator(buttons[index])
                              ? Colors.white
                              : Color.fromRGBO(115, 104, 228, 1),
                        );
                      }

                      //Rest of the buttons
                      else {
                        return MyButton(
                          buttonTapped: () {
                            setState(() {
                              userInput += buttons[index];
                            });
                          },
                          buttonText: buttons[index],
                          color: isOperator(buttons[index])
                              ? Color.fromARGB(255, 102, 164, 245)
                              : Colors.grey[200],
                          textColor: isOperator(buttons[index])
                              ? Colors.white
                              : Color(0xff695CFE),
                        );
                      }
                    }),
              )),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == "%" || x == "/" || x == "x" || x == "-" || x == "+" || x == "=") {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finalQuestion = userInput;
    finalQuestion = finalQuestion.replaceAll("x", "*");
    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    userAnswer = eval.toString();
  }
}

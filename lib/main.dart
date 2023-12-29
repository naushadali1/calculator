import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userInput = '';
  var result = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(child: Text('Caculator')),
          backgroundColor: const Color.fromARGB(255, 162, 168, 245),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: Column(
                      children: [
                        Text(
                          userInput.toString(),
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          result.toString(),
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  MyButton(
                                    title: 'AC',
                                    onpress: () {
                                      userInput = '';
                                      result = '';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '%',
                                    onpress: () {
                                      userInput += '%';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '+/-',
                                    onpress: () {
                                      userInput += '+/-';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '/',
                                    colors: Colors.amber,
                                    onpress: () {
                                      userInput += '/';
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  MyButton(
                                    title: '7',
                                    onpress: () {
                                      userInput += '7';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '8',
                                    onpress: () {
                                      userInput += '8';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '9',
                                    onpress: () {
                                      userInput += '9';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '+',
                                    colors: Colors.amber,
                                    onpress: () {
                                      userInput += '+';
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  MyButton(
                                    title: '4',
                                    onpress: () {
                                      userInput += '4';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '5',
                                    onpress: () {
                                      userInput += '5';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '6',
                                    onpress: () {
                                      userInput += '6';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '-',
                                    colors: Colors.amber,
                                    onpress: () {
                                      userInput += '-';
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  MyButton(
                                    title: '1',
                                    onpress: () {
                                      userInput += '1';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '2',
                                    onpress: () {
                                      userInput += '2';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '3',
                                    onpress: () {
                                      userInput += '3';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '*',
                                    colors: Colors.amber,
                                    onpress: () {
                                      userInput += '*';
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  MyButton(
                                    title: '0',
                                    onpress: () {
                                      userInput += '0';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '.',
                                    onpress: () {
                                      userInput += '.';
                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: 'del',
                                    onpress: () {
                                      userInput = userInput.substring(
                                          0, userInput.length - 1);
                                      result = '';

                                      setState(() {});
                                    },
                                  ),
                                  MyButton(
                                    title: '=',
                                    colors: Colors.amber,
                                    onpress: () {
                                      equalans();
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void equalans() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }
}

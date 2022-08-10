import 'package:calculatorapp/Components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userinput = "";

  var answer = "";

  void equalPress() {
    Parser p = Parser();
    Expression expression = p.parse(userinput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userinput.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                     SizedBox(height: 15,), 
                      Text(
                        answer.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Button(
                          title: "AC",
                          onPress: () {
                            userinput = "";
                            answer = "";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "+/-",
                          onPress: () {
                            userinput += "+/-";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "%",
                          onPress: () {
                            userinput += "%";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "/",
                          color: Color(0xffffa00a),
                          onPress: () {
                            userinput += "/";
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: "7",
                          onPress: () {
                            userinput += "7";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "8",
                          onPress: () {
                            userinput += "8";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "0",
                          onPress: () {
                            userinput += "0";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "*",
                          color: Color(0xffffa00a),
                          onPress: () {
                            userinput += "*";
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: "4",
                          onPress: () {
                            userinput += "4";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "5",
                          onPress: () {
                            userinput += "5";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "6",
                          onPress: () {
                            userinput += "6";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "-",
                          color: Color(0xffffa00a),
                          onPress: () {
                            userinput += "-";
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: "1",
                          onPress: () {
                            userinput += "1";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "2",
                          onPress: () {
                            userinput += "2";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "3",
                          onPress: () {
                            userinput += "3";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "+",
                          color: Color(0xffffa00a),
                          onPress: () {
                            userinput += "+";
                            setState(() {});
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          title: "0",
                          onPress: () {
                            userinput += "0";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: ".",
                          onPress: () {
                            userinput += ".";
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "DEL",
                          onPress: () {
                            userinput =
                                userinput.substring(0, userinput.length - 1);
                            setState(() {});
                          },
                        ),
                        Button(
                          title: "=",
                          color: Color(0xffffa00a),
                          onPress: () {
                            equalPress();
                            setState(() {});
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

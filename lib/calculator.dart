import 'package:basics_c10_str/calc_btn.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routeName="calc";
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String displayResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    displayResult,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ))),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(
                  label: "7",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "8",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "9",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "/",
                  onClick: onOperatorClicked,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(
                  label: "4",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "5",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "6",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "*",
                  onClick: onOperatorClicked,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(
                  label: "1",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "2",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "3",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "-",
                  onClick: onOperatorClicked,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcBtn(
                  label: "0",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: ".",
                  onClick: onBtnClick,
                ),
                CalcBtn(
                  label: "=",
                  onClick: onEqualClicked,
                ),
                CalcBtn(
                  label: "+",
                  onClick: onOperatorClicked,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onBtnClick(label) {
    if (op == "=") {
      lhs = "";
      op = "";
      displayResult = "";
    }
    displayResult += label;
    setState(() {});
  }

  String lhs = ""; // 25
  String op = ""; // -

  //  < 10 + >
  String calculate(String left, String right, String op) {
    double LHS = double.parse(left);
    double RHS = double.parse(right);
    if (op == "+") {
      double res = LHS + RHS;
      return res.toString();
    } else if (op == "-") {
      double res = LHS - RHS;
      return res.toString();
    } else if (op == "*") {
      double res = LHS * RHS;
      return res.toString();
    } else if (op == "/") {
      double res = LHS / RHS;
      return res.toString();
    }

    return "";
  }

  onOperatorClicked(operator) {
    if (op.isEmpty) {
      lhs = displayResult;
    } else {
      lhs = calculate(lhs, displayResult, op);
    }

    op = operator;
    displayResult = "";
    setState(() {});
    print(lhs);
  }

  // lhs > 5
  // op > +

  // <  10 =>
  onEqualClicked(equalOperator) {
    displayResult = calculate(lhs, displayResult, op);

    op = equalOperator;
    setState(() {});
  }
}

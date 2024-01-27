import 'package:basics_c10_str/calculator.dart';
import 'package:basics_c10_str/xo/board_btn.dart';
import 'package:basics_c10_str/xo/players_model.dart';
import 'package:flutter/material.dart';

class XoGame extends StatefulWidget {
  static const String routeName = "XOX";

  XoGame({super.key});

  @override
  State<XoGame> createState() => _XoGameState();
}

class _XoGameState extends State<XoGame> {
  int score1 = 0;

  int score2 = 0;
  int counter = 1;

  List<String> boardState = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    PlayerModel model =
        ModalRoute.of(context)!.settings.arguments as PlayerModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("XO Game"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        model.name1,
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '$score1',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${model.name2}",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '$score2',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(label: boardState[0], index: 0, onCLick: onBtnClick),
                BoardBtn(label: boardState[1], index: 1, onCLick: onBtnClick),
                BoardBtn(label: boardState[2], index: 2, onCLick: onBtnClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(label: boardState[3], index: 3, onCLick: onBtnClick),
                BoardBtn(label: boardState[4], index: 4, onCLick: onBtnClick),
                BoardBtn(label: boardState[5], index: 5, onCLick: onBtnClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardBtn(label: boardState[6], index: 6, onCLick: onBtnClick),
                BoardBtn(label: boardState[7], index: 7, onCLick: onBtnClick),
                BoardBtn(label: boardState[8], index: 8, onCLick: onBtnClick),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onBtnClick(index) {
    if (counter.isOdd) {
      boardState[index] = "X";
      score1 += 2;
      bool win = checkWin("X");
      if (win) {
        score1 += 10;
        resetBoard();
      }
    } else {
      boardState[index] = "O";
      score2 += 2;
      bool win = checkWin("O");
      if (win) {
        score2 += 10;
        resetBoard();
      }
    }

    if (counter == 9) {
      resetBoard();
    }
    counter++;
    setState(() {});
  }

  resetBoard() {
    boardState = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ];
    counter = 0;
  }

  bool checkWin(String symbol) {
    // check ROw
    for (int i = 0; i < 9; i += 3) {
      if (symbol == boardState[i] &&
          symbol == boardState[i + 1] &&
          symbol == boardState[i + 2]) {
        return true;
      }
    }

    for (int i = 0; i < 3; i++) {
      if (symbol == boardState[i] &&
          symbol == boardState[i + 3] &&
          symbol == boardState[i + 6]) {
        return true;
      }
    }

    if (symbol == boardState[0] &&
        symbol == boardState[4] &&
        symbol == boardState[8]) {
      return true;
    }
    if (symbol == boardState[2] &&
        symbol == boardState[4] &&
        symbol == boardState[6]) {
      return true;
    }
    return false;
  }
}

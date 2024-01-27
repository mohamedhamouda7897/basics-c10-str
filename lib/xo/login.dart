import 'package:basics_c10_str/xo/players_model.dart';
import 'package:basics_c10_str/xo/xo_game.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LOGIN";

  LoginScreen({super.key});

  String player1 = "";
  TextEditingController player2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (val) {
                player1 = val;
                print(val);
              },
              decoration: InputDecoration(
                label: const Text("Player One"),
                prefixIcon: const Icon(Icons.email),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              controller: player2,
              decoration: InputDecoration(
                label: const Text("Player One"),
                prefixIcon: const Icon(Icons.email),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, XoGame.routeName,
                arguments: PlayerModel(player1, player2.text));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
              child: const Text("Let's Go"),
            )
          ],
        ),
      ),
    );
  }
}

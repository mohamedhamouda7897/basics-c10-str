import 'package:basics_c10_str/basics/card_item.dart';
import 'package:flutter/material.dart';

import 'card_model.dart';

class HomeScreen extends StatelessWidget {
  List<CardModel> cards = [];

  addDummyData() {
    for (int i = 0; i < 10000; i++) {
      cards.add(CardModel(label: "Cars $i", imagePath: "assets/images/2.jpg"));
    }
  }

  HomeScreen() {
    addDummyData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Route"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 18,
          ),
          itemBuilder: (context, index) {
            return CardItem(cardModel: cards[index]);
          },
          itemCount: cards.length,
        ),
      ),
    );
  }

// Widget convertToWidget(cardModel) {
//   return CardItem(cardModel: cardModel);
// }
}

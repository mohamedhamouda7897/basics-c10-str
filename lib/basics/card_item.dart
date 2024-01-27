import 'package:flutter/material.dart';

import 'card_model.dart';

class CardItem extends StatelessWidget {
  CardModel cardModel;

  CardItem({required this.cardModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              cardModel.imagePath,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 12, right: 12),
              padding: EdgeInsets.symmetric(horizontal: 18),
              decoration:
                  BoxDecoration(color: Color.fromRGBO(135, 49, 185, 80)),
              child: Text(
                cardModel.label,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Slider"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/$index.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    index--;
                    if (index == 0) {
                      index = 2;
                    }
                    setState(() {});
                  },
                  child: Icon(Icons.arrow_back_ios_new),
                ),
                Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    index++;
                    if (index == 3) {
                      index = 1;
                    }
                    setState(() {});
                  },
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

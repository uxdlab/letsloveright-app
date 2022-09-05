import 'package:flutter/material.dart';

class ViewAllPage extends StatelessWidget {
  const ViewAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Matches")),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (e, index) {
            return ImageCard(imageNumber: index);
          }),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({Key? key, required this.imageNumber}) : super(key: key);

  final int imageNumber;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/model_$imageNumber.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Container(
          height: 250,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.25),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Container(
          height: 250,
          alignment: const Alignment(-0.75, 0.85),
          child: const Text(
            "Alexas Mansion",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 250,
          alignment: const Alignment(-0.8, 1),
          child: const Text(
            "5 KM",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

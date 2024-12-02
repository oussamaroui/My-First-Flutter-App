import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {
  ColorScreen(this.screenColor, {super.key});

  final Color screenColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: screenColor.withOpacity(.5),
        title: const Text(
          'Color Screen',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Container(
        color: screenColor,
        child: const Center(
          child: Text(
            'This is the Color Screen',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

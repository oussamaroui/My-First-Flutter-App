import 'package:app_test/components.dart';
import 'package:flutter/material.dart';

import 'color_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(child: Text(
          'Color Screen',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        )),
      ),
      body: GridView.count(
          crossAxisCount: 3,
        children: colorList.map((color) =>
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ColorScreen(color)));
              },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
          ),
        )).toList(),
      ),
    );
  }
}

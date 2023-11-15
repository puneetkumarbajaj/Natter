import 'package:flutter/material.dart';

class Boards extends StatefulWidget {
  const Boards({super.key});

  @override
  State<Boards> createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Natter", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      
    );
  }
}
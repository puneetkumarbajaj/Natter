import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Boards extends StatefulWidget {
  const Boards({super.key});

  @override
  State<Boards> createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  List chats = [["Chat 1"], ["Chat 2"], ["Chat 3"]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Natter", style: GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.white, fontSize: 25),)),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: chats.length,
        prototypeItem: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: CircleAvatar(backgroundColor: Colors.cyan, radius: 10,),
          title: Text(chats.first.first, style: TextStyle(color: Colors.white)),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: Colors.cyan, radius: 30,),
            title: Text(chats[index][0], style: TextStyle(color: Colors.white)),
          );
        },
      ),
    );
  }
}
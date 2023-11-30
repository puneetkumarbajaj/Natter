import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natter/pages/chat_page.dart';

class Boards extends StatefulWidget {
  const Boards({super.key});

  @override
  State<Boards> createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  List chats = [["Chat 1"], ["Chat 2"], ["Chat 3"]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Natter", style: GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.white, fontSize: 25),)),
        backgroundColor: Colors.black,
      ),


    );



    // return Scaffold(
    //   backgroundColor: Colors.black,
    //   appBar: AppBar(
    //     title: Text("Natter", style: GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.white, fontSize: 25),)),
    //     backgroundColor: Colors.black,
    //   ),
    //   body: ListView.builder(
    //     padding: EdgeInsets.all(20),
    //     itemCount: chats.length,
    //     prototypeItem: ListTile(
    //       contentPadding: EdgeInsets.all(10),
    //       leading: CircleAvatar(backgroundColor: Colors.cyan, radius: 10,),
    //       title: Text(chats.first.first, style: TextStyle(color: Colors.white)),
    //     ),
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         leading: CircleAvatar(backgroundColor: Colors.cyan, radius: 30,),
    //         title: Text(chats[index][0], style: TextStyle(color: Colors.white)),
    //       );
    //     },
    //   ),
    // );
  }

  Widget _buildUserlist(DocumentSnapshot document){
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(), 
      builder: (context, snapshot){
        if(snapshot.hasError){
          return const Text('error');
        }
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Text('loading..');
        }
        return ListView(
          children: snapshot.data!.docs.map<Widget>((doc) => _buildUserListItem(doc)).toList(),
        );
      }
    );
  }

  Widget _buildUserListItem(DocumentSnapshot document){
    Map<String, dynamic> data = document.data()! as Map<String, dynamic>;

    if(_auth.currentUser!.email != data['email']){
      return ListTile(
        title: data['email'],
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatPage(
              receiverUserEmail: data['email'],
              receiverUserID: data['uid'],
            ),)
          );
        },
      );
    } else{
      return Container();
    }
  }
}
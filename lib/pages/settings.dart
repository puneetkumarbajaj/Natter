import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Settings", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text("Edit Personal Information" , style: TextStyle(color: Colors.white),),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text("Change Login information" , style: TextStyle(color: Colors.white),),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text("Logout" , style: TextStyle(color: Colors.red),),
            )
          ],
        ),
      ),
    );
  }
}
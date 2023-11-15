import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          CircleAvatar(minRadius: 60),
          const SizedBox(height: 15,),
          Text("Name", style: TextStyle(fontSize: 27),),
          const SizedBox(height: 10,),
          Text("Bio" , style: TextStyle(fontSize: 15),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: ()=>{}, child: Text("Edit Profile")),
            ],
          )
        ]
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:natter/pages/login_page.dart';
import 'package:natter/pages/register_page.dart';
import 'package:natter/utilities/navBar.dart';
import 'package:google_fonts/google_fonts.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Text('N', style: GoogleFonts.pacifico(textStyle: TextStyle(fontSize: 48, color: Colors.cyan))),
        ),
      ),
    );
  }
}
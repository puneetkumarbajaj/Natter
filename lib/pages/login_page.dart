import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natter/utilities/my_text_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {
    final auth
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 50,
          ),
          //logo
          Text("Natter",
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(fontSize: 70, color: Colors.cyan),
              )),
          const SizedBox(
            height: 50,
          ),
          //welcome back message
          Text(
            "Welcome back you\'ve been missed!",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 25,
          ),
          //email textfield
          MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false),
          const SizedBox(
            height: 10,
          ),
          //password textfield
          MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true),
          const SizedBox(
            height: 25,
          ),
          //Sign IN button
          ElevatedButton(
            onPressed: signIn,
            child: Text("Sign In"),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.cyan),
              padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                  EdgeInsets.fromLTRB(70, 15, 70, 15)),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          //register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register Now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan,
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

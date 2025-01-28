import "package:chit_chat/screens/auth/login_screen.dart";
import "package:chit_chat/screens/home_screen.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter/widgets.dart";

// splash screen
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2500), () {

      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    
      // after 1.5 sec we wil move homescreen
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome to chat "),
      ),
      body: Stack(
        children: [
          Positioned(
              top: mq.height * .18,
              left: mq.width * .25,
              width: mq.width * .5,
              child: Image.asset("images/messaging.png")),
          Positioned(
              left: mq.width * .09,
              width: mq.width * .8,
              bottom: mq.height * .10,
              child: Text(" ❤️ Made In India ❤️",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, letterSpacing: 0.8)))
        ],
      ),
    );
  }
}

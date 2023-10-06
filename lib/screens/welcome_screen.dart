import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lak_lak_chat/rounded_button.dart';
import 'package:lak_lak_chat/screens/login_screen.dart';
import 'package:lak_lak_chat/screens/registration_screen.dart';
import 'package:firebase_core/firebase_core.dart';


class WelcomeScreen extends StatefulWidget {
  static const String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =AnimationController(
        vsync: this,
        duration: Duration(seconds: 1));

    controller.forward();
    Firebase.initializeApp();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/images/logo.png'),
                    height: 90.0,
                  ),
                ),
                AnimatedTextKit(animatedTexts: [TypewriterAnimatedText(
                  'Lak Lak',
                  textStyle: TextStyle(
                    fontFamily: "IndieFlower",
                    fontSize: 60.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),])
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(title: "Login!", colour: Colors.indigoAccent, onPressed: (){Navigator.pushNamed(context, LoginScreen.id);}),
            RoundedButton(title: "Register!", colour: Colors.indigo, onPressed: (){ Navigator.pushNamed(context, RegistrationScreen.id);})
          ],
        ),
      ),
    );
  }
}
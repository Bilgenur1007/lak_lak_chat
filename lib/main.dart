import 'package:flutter/material.dart';
import 'package:lak_lak_chat/screens/chat_screen.dart';
import 'package:lak_lak_chat/screens/login_screen.dart';
import 'package:lak_lak_chat/screens/registration_screen.dart';
import 'package:lak_lak_chat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
void main()  {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) =>  WelcomeScreen(),
        ChatScreen.id:(context) =>  ChatScreen(),
        LoginScreen.id: (context) =>  LoginScreen(),
        RegistrationScreen.id :(context) =>  RegistrationScreen(),
      },
    );
  }
}

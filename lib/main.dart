import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobil_proje/login-register/login-register.dart';

void main() {
  runApp(MyApp());
}

final FirebaseAuth auth = FirebaseAuth.instance;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobil Marketim',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hintColor: Colors.orange[500],
        primaryColor: Colors.black,
        canvasColor: Colors.transparent,
      ),
      home: Scaffold(),
      routes: <String, WidgetBuilder>{
        '/kuryelogin': (BuildContext context) => new LoginRegister(),
        '/müşterilogin': (BuildContext context) => new LoginRegister(),
        '/yöneticilogin': (BuildContext context) => new LoginRegister(),
      },
    );
  }
}

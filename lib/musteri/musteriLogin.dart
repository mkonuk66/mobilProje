import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../login-register/login-register.dart';
import '../musteri/musteriHome.dart';

void main() {
  runApp(musteriLogin());
}

final FirebaseAuth auth = FirebaseAuth.instance;

class musteriLogin extends StatelessWidget {
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
      home: new StreamBuilder(
        stream: auth.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return LoginRegister();
          }
          return LoginRegister();
        },
      ),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new musteriHome(),
        '/login': (BuildContext context) => new LoginRegister()
      },
    );
  }
}

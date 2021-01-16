import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class kuryeHome extends StatefulWidget {
  @override
  _kuryeHomeState createState() => _kuryeHomeState();
}

class _kuryeHomeState extends State<kuryeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[],
        elevation: 0.0,
        title: Text("Mobil Marketim"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FutureBuilder(
              future: FirebaseAuth.instance.currentUser(),
              builder: (BuildContext context, AsyncSnapshot user) {
                if (user.connectionState == ConnectionState.waiting) {
                  return Container();
                } else {
                  return Column(
                    children: [
                      Card(),
                    ],
                  );
                }
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

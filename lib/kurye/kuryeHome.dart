import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(kuryeHome());

class kuryeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mobil Marketim",
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Mobil Marketim",
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
            FutureBuilder(
              future: FirebaseAuth.instance.currentUser(),
              builder: (BuildContext context, AsyncSnapshot user) {
                if (user.connectionState == ConnectionState.waiting) {
                  return Container();
                } else {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[],
                  );
                }
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_car),
              title: Text('Siparis 1'),
            ),
            ListTile(
              leading: Icon(Icons.directions_car),
              title: Text('Siparis 2'),
            ),
            ListTile(
              leading: Icon(Icons.directions_car),
              title: Text('Sipariş 3'),
            ),
          ],
        ),
      ),
    );
  }
}

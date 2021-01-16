import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(yoneticiHome());

class yoneticiHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Mobil Marketim",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Mobil Marketim",
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black26,
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 49, vertical: 50),
              child: Text(
                'Yönetici \nEkranına Hoşgeldiniz',
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.white,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                width: 240.0,
                height: 42.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Colors.white,
                ),
                child: SizedBox(
                  child: Center(
                    child: Text(
                      'Mobil Marketim',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        height: 1,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Urun'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => yoneticiUrun(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Kurye'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => yoneticiKurye(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Siparis'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => yoneticiSiparis(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class yoneticiUrun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class yoneticiKurye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class yoneticiSiparis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

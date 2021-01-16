import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(musteriSepet());

class musteriSepet extends StatelessWidget {
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
              leading: Icon(Icons.add),
              title: Text('urun 1'),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('urun 2'),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('urun 3'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150, right: 30),
              child: SizedBox(
                width: 30,
                height: 50,
                child: RaisedButton(
                    child: Text(
                      "Siparişi Onayla",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    onPressed: () {}),
              ),
            )
          ],
        ),
      ),
    );
  }
}

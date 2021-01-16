import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(musteriHome());

class musteriHome extends StatelessWidget {
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
          actions: [
            IconButton(
              icon: new Icon(
                Icons.shopping_bag,
              ),
              onPressed: () {},
            ),
          ],
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
              leading: IconButton(
                icon: new Icon(Icons.add),
                onPressed: () {},
              ),
              title: Text('Urun 1'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.add),
                onPressed: () {},
              ),
              title: Text('Urun 2'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.add),
                onPressed: () {},
              ),
              title: Text('Urun 3'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.add),
                onPressed: () {},
              ),
              title: Text('Urun 4'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.add),
                onPressed: () {},
              ),
              title: Text('Urun 5'),
            ),
          ],
        ),
      ),
    );
  }
}

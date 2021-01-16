import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(yoneticiHome());

class yoneticiHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Mobil Marketim",
          ),
        ),
        backgroundColor: Colors.black,
        actions: [IconButton(icon: new Icon(Icons.add), onPressed: null)],
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.pending_actions),
                onPressed: () {},
              ),
              title: Text('Urun 1'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.pending_actions),
                onPressed: () {},
              ),
              title: Text('Urun 2'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.pending_actions),
                onPressed: () {},
              ),
              title: Text('Urun 3'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.pending_actions),
                onPressed: () {},
              ),
              title: Text('Urun 4'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.pending_actions),
                onPressed: () {},
              ),
              title: Text('Urun 5'),
            ),
          ],
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
                    child: TextButton(
                      child: Text(
                        'Mobil Marketim',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => yoneticiHome()));
                      },
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

class yoneticiKurye extends StatelessWidget {
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
        actions: [IconButton(icon: new Icon(Icons.add), onPressed: null)],
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.directions_car),
                onPressed: () {},
              ),
              title: Text('Kurye 1'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.directions_car),
                onPressed: () {},
              ),
              title: Text('Kurye 2'),
            ),
            ListTile(
              leading: IconButton(
                icon: new Icon(Icons.directions_car),
                onPressed: () {},
              ),
              title: Text('Kurye 3'),
            ),
          ],
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
                    child: TextButton(
                      child: Text(
                        'Mobil Marketim',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => yoneticiHome()));
                      },
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

class yoneticiSiparis extends StatelessWidget {
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
        actions: [
          IconButton(
              icon: new Icon(
                Icons.add,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('Sipariş 1'),
                    subtitle: Text("25£"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Onayla'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('Sipariş 1'),
                    subtitle: Text("25£"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Onayla'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('Sipariş 1'),
                    subtitle: Text("25£"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Onayla'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('Sipariş 1'),
                    subtitle: Text("25£"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Onayla'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('Sipariş 1'),
                    subtitle: Text("25£"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Onayla'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ],
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
                    child: TextButton(
                      child: Text(
                        'Mobil Marketim',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => yoneticiHome()));
                      },
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

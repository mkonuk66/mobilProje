import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobil_proje/kurye/kuryeLogin.dart';
import 'package:mobil_proje/müşteri/müşteriLogin.dart';
import 'package:mobil_proje/yönetici/yöneticiLogin.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Mobil Marketim',
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
                width: 50,
              ),
              SizedBox(
                height: 150,
                width: 350,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 50,
                  ),
                  color: Colors.orange[500],
                  child: Text(
                    "Müşteri",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/musterilogin',
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
                width: 50,
              ),
              SizedBox(
                height: 150,
                width: 355,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 50,
                  ),
                  color: Colors.orange[500],
                  child: Text(
                    "Yönetici",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/yoneticilogin',
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
                width: 50,
              ),
              SizedBox(
                height: 150,
                width: 350,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 50,
                  ),
                  color: Colors.orange[500],
                  child: Text(
                    "Kurye",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => kuryeLogin(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/kuryelogin': (BuildContext context) => new kuryeLogin(),
        '/muşterilogin': (BuildContext context) => new musteriLogin(),
        '/yoneticilogin': (BuildContext context) => new yoneticiLogin(),
      },
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobil_proje/kurye/kuryeLogin.dart';
import 'package:mobil_proje/musteri/musteriLogin.dart';
import 'package:mobil_proje/yonetici/yoneticiLogin.dart';

void main() {
  runApp(GirisEkran());
}

final FirebaseAuth auth = FirebaseAuth.instance;

class GirisEkran extends StatefulWidget {
  @override
  _GirisEkranState createState() => _GirisEkranState();
}

class _GirisEkranState extends State<GirisEkran> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/kuryelogin': (context) => kuryeLogin(),
        '/musterilogin': (context) => musteriLogin(),
        '/yoneticilogin': (context) => yoneticiLogin(),
      },
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
                height: 50,
                width: 60,
              ),
              SizedBox(
                height: 150,
                width: 350,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
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
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => musteriLogin(),
                      ),
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
                    borderRadius: BorderRadius.circular(100.0),
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
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => yoneticiLogin(),
                      ),
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
                    borderRadius: BorderRadius.circular(100.0),
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
                      fontSize: 40,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
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
    );
  }
}

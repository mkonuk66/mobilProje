import 'package:flutter/material.dart';
import 'package:mobil_proje/musteri/altMenu.dart';
class Icecek extends StatelessWidget {
  final resimP, yemekFiyat, yemek;

  Icecek({this.resimP, this.yemekFiyat, this.yemek});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Yemek',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 25.0,
                color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notification_important, color: Colors.white,),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
          children: [
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                  'Yemek',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))
              ),
            ),
            SizedBox(height: 15.0),
            Hero(
                tag: resimP,
                child: Image.asset(resimP,
                    height: 150.0,
                    width: 100.0,
                    fit: BoxFit.contain
                )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(yemekFiyat,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(yemek,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.red,
                      fontSize: 30.0)),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text('İçeceklerimiz kendi üretimimizdir.Afiyet olsun...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Raleway',
                        color: Colors.white)
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
                child: Container(
                    width: MediaQuery.of(context).size.width - 80.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(
                        child: Text('Kart ile öde',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Raleway',
                            color: Colors.black,
                          ),
                        )
                    )
                )
            )
          ]
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AltMenu(),
    );
  }
}
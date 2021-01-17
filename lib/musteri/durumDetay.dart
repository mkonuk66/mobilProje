import 'package:flutter/material.dart';
import 'package:mobil_proje/musteri/Sepet.dart';
import 'package:mobil_proje/musteri/altMenu.dart';

class DurumDetay extends StatelessWidget {
  final resimP, yemekFiyat, yemek;

  DurumDetay({this.resimP, this.yemekFiyat, this.yemek});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.orange[500],
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Ana Yemek',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.orange[500],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notification_important,
              color: Colors.black,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Ana Yemek',
              style: TextStyle(
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange[500],
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Hero(
              tag: resimP,
              child: Image.asset(resimP,
                  height: 150.0, width: 100.0, fit: BoxFit.contain)),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              yemekFiyat,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange[500],
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Center(
            child: Text(
              yemek,
              style: TextStyle(
                color: Colors.orange[500],
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(
                'Dürüm ve burgerlerimiz kendi imalatımızdır. Afiyet olsun',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 80.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.orange[500],
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: TextButton(
                  child: Text(
                    "Ürün Ekle",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sepet(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange[500],
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AltMenu(),
    );
  }
}

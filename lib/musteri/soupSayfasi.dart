import 'package:flutter/material.dart';
import 'package:mobil_proje/musteri/soupDetay.dart';

class CorbaSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  kartOde('Mercimek çorbası', '\10 TL', 'images/mercimek.png',
                      false, false, context),
                  kartOde('Tarhana çorbası', '\12 TL', 'images/tarhana.png',
                      true, false, context),
                  kartOde('Domates çorbası', '\9 TL', 'images/domates.png',
                      false, true, context),
                  kartOde('İşkembe çorbası', '\20 TL', 'images/soup.png', false,
                      false, context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget kartOde(String isim, String fiyat, String resim, bool ekleme,
      bool favori, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CorbaDetay(
                    resimP: resim,
                    yemekFiyat: fiyat,
                    yemek: isim,
                  )));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    favori
                        ? Icon(Icons.favorite, color: Colors.orange[500])
                        : Icon(Icons.star_border)
                  ])),
              Hero(
                  tag: resim,
                  child: Container(
                      height: 75.0,
                      width: 75.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(resim), fit: BoxFit.contain)))),
              SizedBox(height: 7.0),
              Text(fiyat,
                  style: TextStyle(color: Colors.orange[500], fontSize: 14.0)),
              Text(isim,
                  style: TextStyle(color: Color(0xFF575E67), fontSize: 14.0)),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!ekleme) ...[
                      Icon(Icons.shopping_basket,
                          color: Colors.orange[500], size: 12.0),
                      Text('Sepete Ekle',
                          style: TextStyle(
                              color: Colors.orange[500], fontSize: 12.0))
                    ],
                    if (ekleme) ...[
                      Icon(Icons.shopping_basket,
                          color: Colors.orange[500], size: 12.0),
                      Text('Sepete Ekle',
                          style: TextStyle(
                              color: Colors.orange[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0)),
                    ]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

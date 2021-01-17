import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobil_proje/musteri/altMenu.dart';
import 'package:mobil_proje/musteri/durumSayfasi.dart';
import 'package:mobil_proje/musteri/musteriLogin.dart';

void main() => runApp(musteriHome());

class musteriHome extends StatefulWidget {
  @override
  _musteriHomeState createState() => _musteriHomeState();
}

class _musteriHomeState extends State<musteriHome>
with SingleTickerProviderStateMixin {
  TabController controllerList;
  @override
  void initState() {
    super.initState();
    controllerList = TabController(length: 3, vsync: this);
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Müşteri Sayfası",),

          centerTitle: true,
          backgroundColor: Colors.amber,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => musteriLogin()),
              );
            },
          ),
          actions: <Widget>[
            IconButton(icon:
            Icon(Icons.notification_important, color: Colors.black,),
                onPressed: () {}
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 20.0),
          children: <Widget>[
            SizedBox(height: 12.0),
            Text("Yemek",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Raleway',
                color: Colors.amber,
                backgroundColor: Colors.transparent,
              ),
            ),
            TabBar(
              controller: controllerList,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 65.0),
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text('Dürüm',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                      )),
                ),
                Tab(
                  child: Text('İçecek',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                      )),
                ),
                Tab(
                  child: Text('Çorba',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                      )),
                )
              ],
            ),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(
                  controller: controllerList,
                  children: [
                    DurumSayfasi(),
                    DurumSayfasi(),
                    DurumSayfasi(),
                  ]
              )
          )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed:(
            ){
        },
          backgroundColor: Colors.amber,
          child: Icon(Icons.fastfood_rounded),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AltMenu() ,
      );
    }

  }

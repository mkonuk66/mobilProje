import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobil_proje/musteri/IcecekSayfasi.dart';
import 'package:mobil_proje/musteri/Sepet.dart';
import 'package:mobil_proje/musteri/altMenu.dart';
import 'package:mobil_proje/musteri/durumSayfasi.dart';
import 'package:mobil_proje/musteri/musteriLogin.dart';
import 'package:mobil_proje/musteri/soupSayfasi.dart';

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
        title: Text(
          "Hoşgeldin..",
          style: TextStyle(color: Colors.orange[500]),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.orange[500],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => musteriLogin()),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notification_important,
                color: Colors.transparent,
              ),
              onPressed: null),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        children: <Widget>[
          SizedBox(height: 32.0),
          Text(
            "Kategorilerimiz...",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.orange[500],
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(height: 32.0),
          Center(
            child: TabBar(
              controller: controllerList,
              indicatorColor: Colors.red,
              labelColor: Colors.orange[500],
              isScrollable: true,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text('Ana Yemek',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                Tab(
                  child: Text('İçecek',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                Tab(
                  child: Text('Çorba',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: controllerList,
              children: [
                DurumSayfasi(),
                IcecekSayfasi(),
                CorbaSayfasi(),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sepet(),
            ),
          );
        },
        backgroundColor: Colors.orange[500],
        child: Icon(Icons.fastfood_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AltMenu(),
    );
  }
}

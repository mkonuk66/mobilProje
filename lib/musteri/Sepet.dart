import 'package:flutter/material.dart';
import 'package:mobil_proje/musteri/musteriHome.dart';

void main() => runApp(Sepet());

class Sepet extends StatefulWidget {
  @override
  _SepetState createState() => _SepetState();
}

class _SepetState extends State<Sepet> with SingleTickerProviderStateMixin {
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
          "Sepetim",
          style: TextStyle(
            color: Colors.orange[500],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.orange[500],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => musteriHome()),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notification_important,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.white,
            ),
            title: Text(
              'Ekmek x 4',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text("5 TL"),
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.white,
            ),
            title: Text('Süt1L x 2', style: TextStyle(color: Colors.white)),
            subtitle: Text("10TL"),
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.white,
            ),
            title:
                Text('Kuzu Et x 1.2KG', style: TextStyle(color: Colors.white)),
            subtitle: Text("70 TL"),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, left: 100.0),
                    child: Center(
                      child: SizedBox(
                        width: 120,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Toplam Tutar: 85 TL",
                            style: TextStyle(
                              color: Colors.orange[500],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0, left: 40.0),
                    child: SizedBox(
                      width: 70,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.white,
                        child: Text(
                          "ÖDE",
                          style: TextStyle(
                            color: Colors.orange[500],
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

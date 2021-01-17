import 'package:flutter/material.dart';

class AltMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            color: Colors.black,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 2 - 10,
                      height: 50.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.shopping_basket,
                                  color: Colors.orange[500],
                                ),
                                onPressed: null)
                          ])),
                  Container(
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      height: 50.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.shopping_basket,
                                  color: Colors.orange[500],
                                ),
                                onPressed: () {})
                          ]))
                ])));
  }
}

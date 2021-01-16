import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobil_proje/anaMenu.dart';
import 'package:mobil_proje/kurye/kuryeLogin.dart';
import 'package:mobil_proje/musteri/musteriLogin.dart';
import 'package:mobil_proje/yonetici/yoneticiLogin.dart';

void main() => runApp(MyApp(

));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:GirisEkran(),
    );
  }
}

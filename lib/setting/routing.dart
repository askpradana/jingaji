import 'package:flutter/material.dart';
import 'package:jingaji/murid/berandamurid.dart';
import 'package:jingaji/murid/iqra/1.dart';
import 'package:jingaji/murid/testmengaji.dart';
import 'package:jingaji/halamandepan.dart';
import 'package:jingaji/halamanlogin.dart';
import 'package:jingaji/ustad/halamandaftarustad.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch (settings.name){
      case '/routinghalamandepan':
        return MaterialPageRoute(builder: (_)=> Rumah());
      case '/routinghalamandaftarustad':
        return MaterialPageRoute(builder: (_)=> Kenalanustad());
      case '/routinghalamanberandamurid':
        return MaterialPageRoute(builder: (_)=> RumahMurid());
      case '/routingmenujubacaanmurid':
        return MaterialPageRoute(builder: (_)=> BacaIqraMurid());
      case '/routingmenujutestngaji':
        return MaterialPageRoute(builder: (_)=> TestNgaji());
      case '/routinghalamanlogin':
        if (args is String){
          return MaterialPageRoute(
            builder: (_)=> Gerbang(data: args),
          );
        }

        return _errorRoute();
        default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        body: Center(
          child: Text('Error!'),
          ),
        );
      },
    );
  }
}
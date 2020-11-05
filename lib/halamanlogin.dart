import 'package:flutter/material.dart';

class Gerbang extends StatelessWidget {
  
  final String data;

  Gerbang({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IsiGerbang(),
    );
  }
}

class IsiGerbang extends StatefulWidget {
  @override
  IsiGerbangState createState() => IsiGerbangState();
}

class IsiGerbangState extends State<IsiGerbang> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _bikingerbang(),
    );
  }

  Widget _bikingerbang(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _bjudul(),
      ],
    );
  }

  Widget _bjudul(){
    return Text(
      'Selamat anda berhasil!',
      style: TextStyle(fontSize: 40),
    );
  }
}
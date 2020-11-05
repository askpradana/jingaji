import 'package:flutter/material.dart';

class TestNgaji extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IsiTestNgaji(),
    );
  }
}

class IsiTestNgaji extends StatefulWidget {
  @override
  _IsiTestNgajiState createState() => _IsiTestNgajiState();
}

class _IsiTestNgajiState extends State<IsiTestNgaji> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _bikinisitestngaji(),
    );
  }

  Widget _bikinisitestngaji(){
    return Text(
      'berhasil'
    );
  }
}
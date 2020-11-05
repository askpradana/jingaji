import 'dart:ui';

import 'package:flutter/material.dart';

class RumahMurid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('JINGAJI'),
        centerTitle: true,
        backgroundColor: Colors.black
      ),
      drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            accountName: Text('Wedew'),
            accountEmail: Text('haha@hehe.hihi'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: 
              Theme.of(context).platform == TargetPlatform.android
              ? Colors.white
              : Colors.white,
              child: Image.asset('assets/male.webp', fit: BoxFit.fill,)
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_pin_circle),
            title: Text('Profil'),
          )
        ],
      ),
    ),
      body: IsiRumahMurid(),
    );
  }
}

class IsiRumahMurid extends StatefulWidget {
  @override
  _IsiRumahMuridState createState() => _IsiRumahMuridState();
}

class _IsiRumahMuridState extends State<IsiRumahMurid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _bikinrumahmurid(),
    );
  }

  Widget _bikinrumahmurid(){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _bismillah(),
          _profilbocah(),
          SizedBox(height: 200,),
          _tomboldiberandamurid(),
        ],

      ),
      
    );
  }

  Widget _bismillah(){
    return Column(
      children: <Widget>[
        Image(image: AssetImage('assets/bismillah.png'),
        color: Colors.white,
        ),
      ],
    );
  }

  Widget _profilbocah(){
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Halo! Nama',
            style: TextStyle(color: Colors.white, fontSize: 24)
            ),
            Text('Isi Profil?',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/male.webp'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _tomboldiberandamurid(){
    return Center(
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                '/routingmenujubacaanmurid',
                arguments: 'halamanbacaanmurid',
                );
              },
              color: Colors.teal,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Membaca',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  /*Widget _tombolmenujubacaan(){
    return Center(
      child: RaisedButton(
        color: Colors.teal,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      onPressed: (){
        Navigator.of(context).pushNamed(
          '/routingmenujubacaanmurid',
          arguments: 'halamanbacaanmurid',
        );
      },
      child: Text(
        'Membaca',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }*/

  /*Widget _tesngaji(){
    return Center(
      child: RaisedButton(
      onPressed: (){},
      color: Colors.teal,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Test Mengaji',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    ),
    );
  }*/

}
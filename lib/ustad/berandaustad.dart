import 'package:flutter/material.dart';
/*import 'package:jingaji/halamandepan.dart';
import 'halamandaftarustad.dart';*/

class RumahUstad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ustad',
          ),
          centerTitle: true,
        ),
      body: IsiRumahUstad(),
    );
  }
}

class IsiRumahUstad extends StatefulWidget {
  @override
  _IsiRumahUstadState createState() => _IsiRumahUstadState();
}

class _IsiRumahUstadState extends State<IsiRumahUstad> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: _bikinisirumahustad(),
      ),
    );
  }

  Widget _bikinisirumahustad(){
    return Container(
      child: ListView(
        children: <Widget>[
          
        ],
      ),
    );
  }

  /*Widget _tombollogout(){
    return RaisedButton(
      onPressed: (){
        signOutGoogle();
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return Rumah();}), ModalRoute.withName('/routinghalamandepan'));
      },
      child: Text(
        'Logout', style: TextStyle(fontSize: 50),
      ),
    );
  }*/
}


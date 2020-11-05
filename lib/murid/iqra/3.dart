import 'package:flutter/material.dart';
import 'package:jingaji/murid/berandamurid.dart';
import 'package:jingaji/murid/iqra/1.dart';
import 'package:jingaji/murid/iqra/4.dart';

class IqraHal7 extends StatefulWidget {
  @override
  _IqraHal7State createState() => _IqraHal7State();
}

class _IqraHal7State extends State<IqraHal7> {

  void _balikkeawal(){
    Navigator.pushAndRemoveUntil(context, 
    MaterialPageRoute(builder: (BuildContext context) => RumahMurid()),
    ModalRoute.withName('/routingbalikkerumahmurid'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 7'),
        backgroundColor: Colors.black,
        leading: BackButton(
          color: Colors.teal,
          onPressed: (){
            _balikkeawal();
          },
        ),
      ),
      body: _bikiniqra(),
    );
  }

  Widget _bikiniqra(){
    return Center(
      child: Column(
        children: <Widget>[
          _iqranya(),
          _tombollanjut(),
        ],
      ),
    );
  }

  Widget _iqranya(){
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Image.asset('assets/isiiqra/4.jpg'),
    );
  }

  Widget _tombollanjut(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 10, 10),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
      IconButton(
      onPressed: (){
        Route route = MaterialPageRoute(builder: (_)=> BacaIqraMurid());
        Navigator.pop(context, route);
      },
      color: Colors.teal,
      icon: Icon(Icons.arrow_back_ios, size: 40),
        ),
      IconButton(
      onPressed: (){
        Route route = MaterialPageRoute(builder: (_)=> IqraHal8());
        Navigator.push(context, route);
      },
      color: Colors.teal,
      icon: Icon(Icons.arrow_forward_ios, size: 40),
      ),
      ],
      ),
    );
  }
}

//Halaman 8
class IqraHal8 extends StatefulWidget {
  @override
  _IqraHal8State createState() => _IqraHal8State();
}

class _IqraHal8State extends State<IqraHal8> {

  void _balikkeawal(){
    Navigator.pushAndRemoveUntil(context, 
    MaterialPageRoute(builder: (BuildContext context) => RumahMurid()),
    ModalRoute.withName('/routingbalikkerumahmurid'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 8'),
        backgroundColor: Colors.black,
        leading: BackButton(
          color: Colors.teal,
          onPressed: (){
            _balikkeawal();
          },
        ),
      ),
      body: _bikiniqra(),
    );
  }

  Widget _bikiniqra(){
    return Center(
      child: Column(
        children: <Widget>[
          _iqranya(),
          _tombollanjut(),
        ],
      ),
    );
  }

  Widget _iqranya(){
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Image.asset('assets/isiiqra/8.jpg'),
    );
  }

  Widget _tombollanjut(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 10, 10),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
      IconButton(
      onPressed: (){
        Route route = MaterialPageRoute(builder: (_)=> BacaIqraMurid());
        Navigator.pop(context, route);
      },
      color: Colors.teal,
      icon: Icon(Icons.arrow_back_ios, size: 40),
        ),
      IconButton(
      onPressed: (){
        Route route = MaterialPageRoute(builder: (_)=> IqraHal9());
        Navigator.push(context, route);
      },
      color: Colors.teal,
      icon: Icon(Icons.arrow_forward_ios, size: 40),
      ),
      ],
      ),
    );
  }
}

//Halaman 9
class IqraHal9 extends StatefulWidget {
  @override
  _IqraHal9State createState() => _IqraHal9State();
}

class _IqraHal9State extends State<IqraHal9> {

  void _balikkeawal(){
    Navigator.pushAndRemoveUntil(context, 
    MaterialPageRoute(builder: (BuildContext context) => RumahMurid()),
    ModalRoute.withName('/routingbalikkerumahmurid'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 9'),
        backgroundColor: Colors.black,
        leading: BackButton(
          color: Colors.teal,
          onPressed: (){
            _balikkeawal();
          },
        ),
      ),
      body: _bikiniqra(),
    );
  }

  Widget _bikiniqra(){
    return Center(
      child: Column(
        children: <Widget>[
          _iqranya(),
          _tombollanjut(),
        ],
      ),
    );
  }

  Widget _iqranya(){
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Image.asset('assets/isiiqra/9.jpg'),
    );
  }

  Widget _tombollanjut(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 10, 10),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
      IconButton(
      onPressed: (){
        Route route = MaterialPageRoute(builder: (_)=> BacaIqraMurid());
        Navigator.pop(context, route);
      },
      color: Colors.teal,
      icon: Icon(Icons.arrow_back_ios, size: 40),
        ),
      IconButton(
      onPressed: (){
        Route route = MaterialPageRoute(builder: (_)=> IqraHal10());
        Navigator.push(context, route);
      },
      color: Colors.teal,
      icon: Icon(Icons.arrow_forward_ios, size: 40),
      ),
      ],
      ),
    );
  }
}
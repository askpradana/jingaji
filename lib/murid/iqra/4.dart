import 'package:flutter/material.dart';
import 'package:jingaji/murid/berandamurid.dart';
import 'package:jingaji/murid/iqra/1.dart';
import 'package:jingaji/murid/iqra/5.dart';


class IqraHal10 extends StatefulWidget {
  @override
  _IqraHal10State createState() => _IqraHal10State();
}

class _IqraHal10State extends State<IqraHal10> {

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
        title: Text('Halaman 10'),
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
      child: Image.asset('assets/isiiqra/10.jpg'),
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal11());
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

//Halaman 11
class IqraHal11 extends StatefulWidget {
  @override
  _IqraHal11State createState() => _IqraHal11State();
}

class _IqraHal11State extends State<IqraHal11> {

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
        title: Text('Halaman 11'),
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
      child: Image.asset('assets/isiiqra/11.jpg'),
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal12());
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

//Halaman 12
class IqraHal12 extends StatefulWidget {
  @override
  _IqraHal12State createState() => _IqraHal12State();
}

class _IqraHal12State extends State<IqraHal12> {

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
        title: Text('Halaman 12'),
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
      child: Image.asset('assets/isiiqra/12.jpg'),
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal13());
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
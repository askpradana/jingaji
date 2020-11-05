import 'package:flutter/material.dart';
import 'package:jingaji/murid/berandamurid.dart';
import 'package:jingaji/murid/iqra/1.dart';
import 'package:jingaji/murid/iqra/3.dart';

class IqraHal4 extends StatefulWidget {
  @override
  _IqraHal4State createState() => _IqraHal4State();
}

class _IqraHal4State extends State<IqraHal4> {

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
        title: Text('Halaman 4'),
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal5());
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

//Halaman 5
class IqraHal5 extends StatefulWidget {
  @override
  _IqraHal5State createState() => _IqraHal5State();
}

class _IqraHal5State extends State<IqraHal5> {

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
        title: Text('Halaman 5'),
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
      child: Image.asset('assets/isiiqra/5.jpg'),
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal6());
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

//Halaman 6
class IqraHal6 extends StatefulWidget {
  @override
  _IqraHal6State createState() => _IqraHal6State();
}

class _IqraHal6State extends State<IqraHal6> {

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
        title: Text('Halaman 6'),
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
      child: Image.asset('assets/isiiqra/6.jpg'),
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal7());
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
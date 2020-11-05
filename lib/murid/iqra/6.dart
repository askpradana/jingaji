import 'package:flutter/material.dart';
import 'package:jingaji/murid/berandamurid.dart';
import 'package:jingaji/murid/iqra/1.dart';


class IqraHal16 extends StatefulWidget {
  @override
  _IqraHal16State createState() => _IqraHal16State();
}

class _IqraHal16State extends State<IqraHal16> {

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
        title: Text('Halaman 16'),
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
      child: Image.asset('assets/isiiqra/16.jpg'),
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal16());
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

//Halaman 17
class IqraHal17 extends StatefulWidget {
  @override
  _IqraHal17State createState() => _IqraHal17State();
}

class _IqraHal17State extends State<IqraHal17> {

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
        title: Text('Halaman 17'),
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
      child: Image.asset('assets/isiiqra/17.jpg'),
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal18());
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

//Halaman 18
class IqraHal18 extends StatefulWidget {
  @override
  _IqraHal18State createState() => _IqraHal18State();
}

class _IqraHal18State extends State<IqraHal18> {

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
        title: Text('Halaman 18'),
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
      child: Image.asset('assets/isiiqra/18.jpg'),
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal19());
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
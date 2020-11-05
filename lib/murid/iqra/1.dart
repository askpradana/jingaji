import 'package:flutter/material.dart';
import 'package:jingaji/murid/berandamurid.dart';
import 'package:jingaji/murid/iqra/2.dart';

class BacaIqraMurid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 1'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: IsiBacaIqraMurid(),
    );
  }
}

class IsiBacaIqraMurid extends StatefulWidget {
  @override
  _IsiBacaIqraMuridState createState() => _IsiBacaIqraMuridState();
}

class _IsiBacaIqraMuridState extends State<IsiBacaIqraMurid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _bikinisibacaiqramurid(),
    );
  }

  Widget _bikinisibacaiqramurid(){
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            _iqranya1(),
            _tombollanjut(),
          ],
        ),
      )
    );
  }

  Widget _iqranya1(){
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Image.asset('assets/isiiqra/1.jpg'),
    );
  }

  Widget _tombollanjut(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 10, 10),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
      IconButton(
      onPressed: null,
      color: Colors.teal,
      icon: Icon(Icons.arrow_back_ios, size: 40),
        ),
      IconButton(
      onPressed: (){
        Navigator.push(context, new MaterialPageRoute(builder: (_) => new IqraHal2()));
      },
      color: Colors.teal,
      icon: Icon(Icons.arrow_forward_ios, size: 40),
      ),
      ],
      ),
    );
  }
}

class IqraHal2 extends StatefulWidget {
  @override
  _IqraHal2State createState() => _IqraHal2State();
}

//Halaman 2
class _IqraHal2State extends State<IqraHal2> {

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
        title: Text('Halaman 2'),
        backgroundColor: Colors.black,
        leading: BackButton(
          color: Colors.teal,
          onPressed: (){
            _balikkeawal();
          },
        ),
      ),
      body: _bikiniqrahal2(),
    );
  }

  Widget _bikiniqrahal2(){
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
          _iqranya2(),
          _tombollanjut2(),
          ],
        ),
      ),
    );
  }

  Widget _iqranya2(){
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Image.asset('assets/isiiqra/2.jpg'),
    );
  }

  Widget _tombollanjut2(){
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal3());
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

class IqraHal3 extends StatefulWidget {
  @override
  _IqraHal3State createState() => _IqraHal3State();
}

class _IqraHal3State extends State<IqraHal3> {

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
        title: Text('Halaman 3'),
        backgroundColor: Colors.black,
        leading: BackButton(
          color: Colors.teal,
          onPressed: (){
            _balikkeawal();
          },
        ),
      ),
      body: _bikiniqrahal3(),
    );
  }

  Widget _bikiniqrahal3(){
    return Center(
      child: Column(
        children: <Widget>[
          _iqranya3(),
          _tombollanjut3(),
        ],
      ),
    );
  }

  Widget _iqranya3(){
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Image.asset('assets/isiiqra/3.jpg'),
    );
  }

  Widget _tombollanjut3(){
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
        Route route = MaterialPageRoute(builder: (_)=> IqraHal4());
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

//Halaman 4

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jingaji/murid/berandamurid.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

class Rumah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IsiRumah(),
    );
  }
}

Future<String> signInWithGoogle() async{
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken()!=null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);

  return 'signInWithGoogle succeeded: $user';

}

void signOutGoogle() async{
  await googleSignIn.signOut();
  print("Signed Out");
}

class IsiRumah extends StatefulWidget {
  @override
  _IsiRumahState createState() => _IsiRumahState();
}

class _IsiRumahState extends State<IsiRumah> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _bikinrumah(),
    );
  }

  Widget _bikinrumah(){
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100),
          _ajudul(),
          SizedBox(height: 40),
          _awelcome(),
          SizedBox(height: 80),
          _atombolmurid(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _ajudul(){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('JINGAJI',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Text('By UmmAPP',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _awelcome(){
    return Column(
      children: <Widget>[
        Image(image: AssetImage('assets/quran.png'), 
        color: Colors.white,
        height: 180,
        )
      ],
    );
  }

  Widget _atombolmurid(){
    return RaisedButton(
      onPressed: (){
        signInWithGoogle().whenComplete((){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context){
                return RumahMurid();
                },
              )
            );
          }
        );
      },
      child: Text('Mulai Baca',  
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      color: Colors.teal,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }

  /*Widget _atombolustad(){
    return RaisedButton(
      color: Colors.black,
      onPressed: (){
        Navigator.of(context).pushNamed(
          '/routinghalamandaftarustad',
          arguments: 'halamandaftarustad'
        );
      },
      child: Text('Ustad',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
        side: BorderSide(
          color: Colors.white, width: 2, style: BorderStyle.solid
        )
      )
    );
  }

  Widget _langsunglogin(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FlatButton(
          onPressed: (){
            Navigator.of(context).pushNamed(
              '/routinghalamanlogin',
              arguments: 'halamanlogin'
            );
          },
          child: Text('Login',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }*/

}
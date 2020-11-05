import 'package:flutter/material.dart';
import 'package:jingaji/ustad/berandaustad.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String name;
String email;
String imageUrl;

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

class Kenalanustad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IsiKenalanustad(),
    );
  }
}

class IsiKenalanustad extends StatefulWidget {
  @override
  _IsiKenalanustadState createState() => _IsiKenalanustadState();
}

class _IsiKenalanustadState extends State<IsiKenalanustad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _bikinisikenalanustad(),
    );
  }

  Widget _bikinisikenalanustad(){
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 43),
        child: Form(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _judulkenalanustad(),
                _formusernameustad(),
                SizedBox(height: 20),
                _masukdengangoogle(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _judulkenalanustad(){
    return Text(
      'Pendaftaran Ustad',
        style: TextStyle(fontSize: 30, color: Colors.white),
    );
  }

  Widget _formusernameustad(){
    return TextFormField(
      validator: (value) => value.isEmpty ? "Username can not be empty": null,
      style: TextStyle(
        color: Color.fromRGBO(252, 252, 252, 1),
      ),
      decoration: 
        InputDecoration(
          hintText: 'username', hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(252, 252, 252, 1))
          ),
          
        )
    );
  }

  Widget _masukdengangoogle(){
    return RaisedButton(
      onPressed: (){
        signInWithGoogle().whenComplete((){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context){
                return RumahUstad();
                },
              )
            );
          }
        );
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      splashColor: Colors.teal,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(image: AssetImage('assets/logogoogle.png'), height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Masuk dengan google',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'setting/routing.dart';

//tanya
//biar tombol klik disini pas di halamandepan itu tau dia nunjukin ke santri atau ustad gimana
//return new buat apa?
//final ??

void main() => runApp(JINGAJI());

class JINGAJI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IQRA JINGAJI',           
      initialRoute: '/routinghalamandepan',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

/*service firebase.storage {
  match /b/{bucket}/o {
    match /{allPaths=**} {
      allow read, write: if request.auth != null;
    }
  }
}*/
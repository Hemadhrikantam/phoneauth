import 'package:firebase_auth/firebase_auth.dart';
//import 'package:fllutter_firabase_form/loginpage.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';
import 'registration.dart';


class Home extends StatefulWidget {
   String uid;
   String name;
   Home(this.uid,this.name);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false);
            },
          )
        ],
      ),
      body: Center(
        child: Text('Welcome ${widget.name}'),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // uid = FirebaseAuth.instance.currentUser!.uid;
  }
}
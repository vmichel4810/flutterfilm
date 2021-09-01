import 'package:flutter/material.dart';
import 'films/array.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    // final filmLink = ModalRoute.of(context)?.settings.arguments;
    // print(filmLink);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(),
      ),
      body: SafeArea(
        child: Text('vodka'),
        
      ),
    );
  }
}

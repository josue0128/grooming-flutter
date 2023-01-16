import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 205, 207, 192),
      key: _key,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Image.asset("Icons/menu2.png"), onPressed: ()=>{
          _key.currentState?.openDrawer()

        },),
      ),
      body: body(),
      drawer: NavBar(),
    );
  }
}

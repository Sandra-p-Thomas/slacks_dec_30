import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/screens/black.dart';
import 'package:slacks_test/screens/details/blue.dart';
import 'colored.dart';
import 'details/distressed.dart';
import 'home-screen.dart';

class Categ extends StatefulWidget {
  const Categ({Key? key}) : super(key: key);

  @override
  State<Categ> createState() => _CategState();
}

class _CategState extends State<Categ> {
  SharedPreferences? logindata;
  String? usernumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      usernumber = logindata!.getString('usernumber');
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(children: [
          Padding(padding: EdgeInsets.all(50)),
          InkWell(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 32, right: 32),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.white)),
                child: Text(
                  "All",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              }),
          Padding(padding: EdgeInsets.all(10)),
          InkWell(
              child: Container(
                height: 50,
                width: 100,
                margin: EdgeInsets.only(left: 32, right: 32),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.white)),
                child: Text(
                  "Black",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Black()));
              }),
          const Padding(padding: EdgeInsets.all(10)),
          InkWell(
              child: Container(
                height: 50,
                width: 100,
                margin: EdgeInsets.only(left: 32, right: 32),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.white)),
                child:
                    const Text("Blue", style: TextStyle(color: Colors.white)),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Blue()));
              }),
          Padding(padding: EdgeInsets.all(10)),
          InkWell(
              child: Container(
                height: 50,
                width: 100,
                margin: EdgeInsets.only(left: 32, right: 32),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.white)),
                child:
                    Text("Distressed", style: TextStyle(color: Colors.white)),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Dis()));
              }),
          Padding(padding: EdgeInsets.all(10)),
          InkWell(
              child: Container(
                height: 50,
                width: 100,
                margin: EdgeInsets.only(left: 32, right: 32),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.white)),
                child: Text("Coloured", style: TextStyle(color: Colors.white)),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Colored()));
              }),
        ]),
      ),
    );
  }
}

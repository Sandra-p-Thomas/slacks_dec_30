import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/log_in/login.dart';
import 'package:slacks_test/screens/profie.dart';
import 'package:slacks_test/screens/wishlist.dart';
import 'detail_page.dart';
import 'detail_page_1.dart';
import 'detail_page_10.dart';
import 'detail_page_11.dart';
import 'detail_page_2.dart';
import 'detail_page_3.dart';
import 'detail_page_5.dart';
import 'detail_page_6.dart';
import 'detail_page_7.dart';
import 'detail_page_8.dart';
import 'detail_page_9.dart';

class Blue extends StatefulWidget {
  @override
  _BlueState createState() => _BlueState();
}

class _BlueState extends State<Blue> {
  SharedPreferences?logindata;
  String ? usernumber;
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

  @override
  Widget build(BuildContext context) {
    //             InkWell(
    //               onTap: () {
    //                 Navigator.push(context,
    //                     MaterialPageRoute(builder: (_) => DetailPage_3()));
    //               },
    //               child: Container(
    //                 height: 150,
    //                 width: 150,
    //                 padding: const EdgeInsets.all(8),
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10),
    //                   image: DecorationImage(
    //                       image: AssetImage("assets/product/ex.png"),
    //                       fit: BoxFit.cover),
    //                 ),
    //               ),
    //             ),
    return SafeArea(
        child: Scaffold(
            body: GridView(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                primary: false,
                padding: const EdgeInsets.all(30),
                children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => DetailPage()));
            },
            child: Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/baggy.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Detailpage_2()));
            },
            child: Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/new/a.jpg"), fit: BoxFit.cover),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Detailpage_6()));
            },
            child: Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/new/b.jpg"), fit: BoxFit.cover),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Detailpage_1()));
            },
            child: Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/images/skinny/blue_4.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => DetailPage_3()));
            },
            child: Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/product/ex.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ])));
  }
}

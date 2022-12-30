import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'detail_page.dart';
import 'detail_page_2.dart';
import 'detail_page_3.dart';


class Dis extends StatefulWidget {
  @override
  _DisState createState() => _DisState();
}

class _DisState extends State<Dis> {
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

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/log_in/register.dart';
import 'package:slacks_test/log_in/login.dart';
import 'package:slacks_test/screens/cart_screen.dart';
import 'package:slacks_test/screens/details/detail_page_10.dart';
import 'package:slacks_test/screens/details/detail_page_11.dart';
import 'package:slacks_test/screens/details/detail_page_3.dart';
import 'package:slacks_test/screens/details/detail_page_1.dart';
import 'package:slacks_test/screens/details/detail_page_2.dart';
import 'package:slacks_test/screens/details/detail_page_5.dart';
import 'package:slacks_test/screens/details/detail_page_4.dart';
import 'package:slacks_test/screens/details/detail_page_6.dart';
import 'package:slacks_test/commented/logout.dart';
import 'package:slacks_test/screens/details/detail_page_7.dart';
import 'package:slacks_test/screens/details/detail_page_8.dart';
import 'package:slacks_test/screens/details/detail_page_9.dart';
import 'package:slacks_test/screens/profie.dart';
import 'package:slacks_test/screens/wishlist.dart';
import '../log_in/firebase_auth.dart';
import 'details/detail_page.dart';
import 'bottom_navigationBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return  SafeArea(
      child: Scaffold(
        body: GridView(
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
                      primary: false,
                      padding: const EdgeInsets.all(30),
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => DetailPage()));
                          },
                          child: Container(
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => DetailPage_3()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/product/ex.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_4()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/black.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_1()));
                          },
                          child: Container(
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_2()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/new/a.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_6()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/new/b.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_5()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/new/c.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_7()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/new/d.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      //  Text("$usernumber"),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_9()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/new/f.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_8()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/new/e_1.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_10()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/new/g.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Detailpage_11()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/new/h.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ]),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text('Profile'),
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Profile()));
                 //     context, MaterialPageRoute(builder: (_) => Cart()));

                },
              ),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                title: const Text('Favourite'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag, color: Colors.black),
                title: const Text('Wishlist'),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Wish()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: const Text('settings'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                title: Text('My orders'),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: Colors.black,
                ),
                title: const Text('Log out'),
                onTap: () {
                  // signOutGoogle();
                 //   logindata?.setBool('login', false);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) =>const LOG()));
                  },
                  // logindata.remove('user');
                  // //logindatCircleAvatar(
                  //   backgroundImage: NetworkImage(
                  //     imageUrl!,
                  //   ),
                  //   radius: 60,
                  //   backgroundColor: Colors.transparent,
                  // ),a.setString('username', newuser);
                  // if (newuser == true
                  // ) {
                  //   Navigator.pushReplacement(
                  //       context, new MaterialPageRoute(builder: (context) => LOG()));
                  // }
                 // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => LOG()));
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => Log_in()));
                 // onPressed: () {
                 //    signOutGoogle();
                 //    Navigator.of(context).pushAndRemoveUntil(
                 //        MaterialPageRoute(builder: (context) {
                 //          return Logout();
                 //        }), ModalRoute.withName('/'));
                //  };
              ),
          ],
          ),
        ),

      ),
    );
  }
}

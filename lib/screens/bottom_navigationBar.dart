import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/banner.dart';
import 'package:slacks_test/log_in/register.dart';
import 'package:slacks_test/screens/cart_screen.dart';
import 'package:slacks_test/screens/catagories.dart';
import 'package:slacks_test/screens/home-screen.dart';
import 'package:slacks_test/screens/profie.dart';
import 'package:slacks_test/screens/wishlist.dart';
import '../log_in/login.dart';
import '../log_in/firebase_auth.dart';

class Barnew extends StatefulWidget {
  const Barnew({Key? key}) : super(key: key);

  @override
  _BarnewState createState() => _BarnewState();
}
class _BarnewState extends State<Barnew> {
//  SharedPreferences? logindata;
// String? usernumber;
// var name,email,phone;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     initial();
//   }
//   void initial() async {
//     logindata = await SharedPreferences.getInstance();
//     setState(() {
//       usernumber = logindata!.getString('usernumber');
//       // name=logindata!.getString('name');
//       // email=logindata!.getString('email');
//       // phone=logindata!.getString('phone');
//     });
//   }
  SharedPreferences?logindata;
  late bool newuser,reguser;
 String ? usernumber;
 // String?name;
  //String?email;
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
  int pageIndex = 0;
  final pages = [
    const Banner1(),
    Categ(),
    const Cart(),
 const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async=>false ,
     child: SafeArea(
       child: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.black,
         ),
       drawer: Drawer(
         child: ListView(
           children: [
             // // DrawerHeader(
             // //   decoration: BoxDecoration(
             // //     color: Colors.black,
             // //   ),
             // //   child: imageUrl==null? Text("SlacK"):CircleAvatar(
             // //     backgroundColor: Colors.transparent,
             // //     backgroundImage: NetworkImage(imageUrl!),
             // //     radius: 40,
             // //   ),),
             // Text(
             //   //name!,
             //   "sandra",
             //   style: TextStyle(
             //       color: Colors.black,
             //       fontWeight: FontWeight.bold),
             // ),
             // // SizedBox(height: 20),
             // Text(
             //   email!,
             //   style: TextStyle(
             //       color: Colors.black,
             //       fontWeight: FontWeight.bold),
             // ),
             // SizedBox(height: 40),
             // ListTile(title:Text( "$username")   ,),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               mainAxisSize: MainAxisSize.max,
               children: <Widget>[
               //   (imageUrl==null)?CircleAvatar(
               //     backgroundColor: Colors.black,
               //     radius: 60,
               //   ):
               //   CircleAvatar(
               //     backgroundImage: NetworkImage(
               //      imageUrl!
               //     ),
               //     radius: 60,
               //     backgroundColor: Colors.transparent,
               //   ),
               //   Row(
               //     children: [
               //       Padding(padding: EdgeInsets.all(15)),
               // Icon(Icons.phone,color: Colors.black,),
               //       Padding(padding: EdgeInsets.all(15)),
               //       (usernumber==null)?Text(":"):
               //       Text(
               //         " : $usernumber",
               //         style: TextStyle(
               //           //  fontSize: 20,
               //             color: Colors.black,
               //             fontWeight: FontWeight.bold),
               //       ),
               //     ],
               //   ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(15)),
                    Icon(Icons.person,color: Colors.black,),
                     Padding(padding: EdgeInsets.all(15)),
                     (name== null)?Text(" : "):
                     Text(
                  ' : $name'!,
                       style: TextStyle(
                        //   fontSize: 20,
                           color: Colors.black,
                           fontWeight: FontWeight.bold),
                     ),
                  ],
                ),

                 Row(
                   children: [
                     Padding(padding: EdgeInsets.all(15)),
                     Icon(Icons.email,color: Colors.black),
                    Padding(padding: EdgeInsets.all(15)),
                     (email== null)?Text(" : "):
                     Text(
                      ' : $email',
                       style: TextStyle(
                          // fontSize: 20,
                           color: Colors.black,
                           fontWeight: FontWeight.bold),
                     ),
                   ],
                 ),
                 Divider(color: Colors.black45,height: 2),

                 // Text("number:$userumber"),
                //  SizedBox(height: 40),
                 // ElevatedButton(
                 //   onPressed: () {
                 //     signOutGoogle();
                 //     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)
                 //     {return LOG();}),
                 //         ModalRoute.withName('/'));                   },
                 //   child: Padding(
                 //     padding: const EdgeInsets.all(8.0),
                 //     child: Text(
                 //       'Sign Out',
                 //       style: TextStyle(fontSize: 25, color: Colors.white),
                 //     ),
                 //   ),
                 //
                 // )
               ],
             ),
             SizedBox(height: 15,),
             ListTile(
               leading: Icon(
                 Icons.favorite,
                 color: Colors.black,
               ),
               title: const Text('Favourite'),
               onTap: () {},
             ),                 Divider(color: Colors.black45,height: 2),

             ListTile(
               leading: Icon(Icons.shopping_bag, color: Colors.black),
               title: const Text('Wishlist'),
               onTap: () {
                 Navigator.push(
                     context, MaterialPageRoute(builder: (_) => Wish()));
               },
             ),                 Divider(color: Colors.black45,height: 2),

             ListTile(
               leading: Icon(
                 Icons.settings,
                 color: Colors.black,
               ),
               title: const Text('settings'),
               onTap: () {},
             ),                 Divider(color: Colors.black45,height: 2),

             ListTile(
               leading: Icon(
                 Icons.shopping_cart,
                 color: Colors.black,
               ),
               title: Text('My orders'),
             ),                 Divider(color: Colors.black45,height: 2),

             ListTile(
               leading: Icon(
                 Icons.logout_outlined,
                 color: Colors.black,
               ),
               title: const Text('Log out'),
               onTap: () {

                 signOutGoogle();
                 cleatText();
                 logindata?.setBool('login', false) ;
                 Navigator.pushReplacement(context,
                     MaterialPageRoute(builder: (context) => LOG()));
               },
             ),
           ],
         ),
       ),
        backgroundColor: Colors.black,
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
    ),
     )
    );
  }
  Container buildMyNavBar(BuildContext context) {
    return Container(
       height: 60,
        decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.local_offer,
              color: Colors.white,
              size: 20,
            )
                : const Icon(
              Icons.local_offer_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.home,
              color: Colors.white,
              size: 20,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
              size: 20,
            )
                : const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
   cleatText() async{
 SharedPreferences preferences = await SharedPreferences.getInstance();
    // var status = logindata?.getBool('isLoggedin')??false;
    // print(status);
    // runApp(MaterialApp(home: status== true?Log_in():Barnew(),));
   await preferences.clear();
  }
}


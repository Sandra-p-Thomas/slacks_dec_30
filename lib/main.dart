import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:slacks_test/log_in/login.dart';
import 'package:slacks_test/log_in/register.dart';
import 'package:slacks_test/commented/add_page.dart';
import 'package:slacks_test/screens/home-screen.dart';
import 'package:slacks_test/screens/bottom_navigationBar.dart';
import 'package:slacks_test/screens/list_page.dart';
import 'package:slacks_test/splash_screen/splash_screen.dart';
import 'package:slacks_test/test/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(), //too add splash screen ]
      // home: ListPage(),   // Firestore crud connectiom to listveiw
    );
  }
}

// //
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:slacks_test/provider_ex/accounts.dart';
// // import 'package:slacks_test/provider_ex/settings_1.dart';
// // void main() {
// //   runApp(MyApp());
// // }
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Provider Demo',
// //       home: MyHomePage(),
// //     );
// //   }
// // }
// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// // class _MyHomePageState extends State<MyHomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return ChangeNotifierProvider<Data>(
// //       create: (context) => Data(),
// //       child: MaterialApp(home: AccountScreen(), routes: {
// //         'account_screen': (context) => AccountScreen(),
// //         'settings_screen': (context) => SettingsScreen(),
// //       }),
// //     );
// //   }
// // }
// // class Data extends ChangeNotifier {
// //   Map data = {
// //     'name': 'Sammy Shark',
// //     'email': 'example@example.com',
// //     'age': 42
// //   };
// //   void updateAccount(input) {
// //     data = input;
// //     notifyListeners();
// //   }
// // }

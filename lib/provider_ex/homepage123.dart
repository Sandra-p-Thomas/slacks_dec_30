import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../log_in/login.dart';
import 'accounts.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(home: LOG(), routes: {
        'account_screen': (context) => AccountScreen(),
        //'settings_screen': (context) => SettingsScreen(),
      }),
    );
  }
}
class Data extends ChangeNotifier {
  Map data = {
    'name': 'Sammy Shark',
    'email': 'example@example.com',
    'age': 42
  };
  void updateAccount(input) {
    data=input;
    notifyListeners();
  }
}

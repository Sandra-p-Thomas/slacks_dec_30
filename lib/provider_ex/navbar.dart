import 'package:flutter/material.dart';
import 'settings_1.dart';
import 'accounts.dart';
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(onPressed: (){
            Navigator.pushReplacementNamed(context,SettingsScreen.id );
          }, child:const Icon(Icons.account_box,color:Colors.yellowAccent,),
          ),
          TextButton(onPressed: (){
            Navigator.pushReplacementNamed(context,AccountScreen.id);
          }, child: const Icon(Icons.settings,color: Colors.black,),
          ),
        ],
      ),
    );
  }
}

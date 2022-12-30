import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'navbar.dart';
import 'homepage123.dart';
class SettingsScreen extends StatelessWidget {
  static const String id = 'settings_screen';
  final formKey = GlobalKey<FormState>();
  final Map data = {'name': String, 'email': String, 'age': int};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: NavBar(),
      appBar: AppBar(title: Text('Change Account Details')),
      body: ListView(
        children: [
            Form(
                key: formKey,
                child: Column(
                   // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onSaved: (input) => data['name'] = input,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (input) => data['email'] = input,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Age'),
                onSaved: (input) => data['age'] = input,
              ),
              TextButton(
                onPressed: () {
                  formKey.currentState!.save();
                  Provider.of<Data>(context, listen: false).updateAccount(data);
                  formKey.currentState?.reset();
                },
                child: Text('Submit'),
              )
                ]
            ),
          ),




    ]
      ),

    );
  }
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:slacks_test/models/products.dart';

import '../commented/add_page.dart';
import '../commented/edit_page.dart';
import '../services/firestore_crud.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPage();
  }
}

class _ListPage extends State<ListPage> {
  final Stream<QuerySnapshot> collectionReference = FirebaseCrud.readProduct();
  //FirebaseFirestore.instance.collection('Employee').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("List of Products"),
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(
        //       Icons.app_registration,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {
        //       Navigator.pushAndRemoveUntil<dynamic>(
        //         context,
        //         MaterialPageRoute<dynamic>(
        //           builder: (BuildContext context) => AddPage(),
        //         ),
        //             (route) =>
        //         false, //if you want to disable back feature set to false
        //       );
        //     },
        //   )
        // ],
      ),
      body: StreamBuilder(
        stream: collectionReference,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: snapshot.data!.docs.map((e) {
                return Card(
                    child: Column(children: [
                      Text(e['des']),   // to get one detail write like this
                    ListTile(
                        title: Text(e['des']),
                        subtitle: Container(
                          child: (Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("amount: " + e['amount'],
                                  style: const TextStyle(fontSize: 14)),
                              // Text(" quantity: " + e['quantity'],
                              //     style: const TextStyle(fontSize: 12)),
                            ],
                          )),
                        ),
                  ),
                      // ButtonBar(
                      //   alignment: MainAxisAlignment.spaceBetween,
                      //   children: <Widget>[
                      //     TextButton(
                      //       style: TextButton.styleFrom(
                      //         padding: const EdgeInsets.all(5.0),
                      //         primary: const Color.fromARGB(
                      //             255, 143, 133, 226),
                      //         textStyle: const TextStyle(fontSize: 20),
                      //       ),
                      //       child: const Text('Edit'),
                      //       onPressed: () {
                      //         Navigator.pushAndRemoveUntil<dynamic>(
                      //           context,
                      //           MaterialPageRoute<dynamic>(
                      //             builder: (BuildContext context) =>
                      //                 EditPage(
                      //                   products: Products(
                      //                       uid: e.id,
                      //                       des: e["des"],
                      //                       amount: e["amount"],
                      //                       quantity: e["quantity"]),
                      //                 ),
                      //           ),
                      //               (route) =>
                      //           false, //if you want to disable back feature set to false
                      //         );
                      //       },
                      //     ),
                      //     TextButton(
                      //       style: TextButton.styleFrom(
                      //         padding: const EdgeInsets.all(5.0),
                      //         primary: const Color.fromARGB(
                      //             255, 143, 133, 226),
                      //         textStyle: const TextStyle(fontSize: 20),
                      //       ),
                      //       child: const Text('Delete'),
                      //       onPressed: () async {
                      //         var response =
                      //         await FirebaseCrud.deleteProduct(docId: e.id);
                      //         if (response.code != 200) {
                      //           showDialog(
                      //               context: context,
                      //               builder: (context) {
                      //                 return AlertDialog(
                      //                   content:
                      //                   Text(response.message.toString()),
                      //                 );
                      //               });
                      //         }
                      //       },
                      //     ),
                      //   ],
                      // ),
                    ]));
              }).toList(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../model/transaction.dart';


class MyHomePage extends StatelessWidget {

  final List<Transaction> transactions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal expense for GIT'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            /*
            Eng :
            double.infinity allow to take the size as much as it can get.
            which is not necessary there because we have CrossAxisAlignment.strech
            Fr :
            double.infinity permet de prendre toute les largeur possible.
            ce qui n'est pas nécessaire ici puisque nous avons CrossAxisAlignment.strech
            width: double.infinity,
             */
            child: Card(
            color: Colors.blue,
              elevation: 5,
              child: Text('Chart'),
            ),
          ),
          Card(
            color: Colors.orange,
            child: Text('List of Tx'),
          ),
        ],
      ),
    );
  }
}
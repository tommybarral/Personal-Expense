import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'dart:ui';
import 'package:intl/intl.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [
    //DUMMY transactions for example.
    //exemple de transactions.
    Transaction(id: 't1', title: 'new shoes', amount: 29.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'new shirt', amount: 14.99, date: DateTime.now()),
    Transaction(id: 't3', title: 'new glasses', amount: 39.99, date: DateTime.now()),
  ];

  String titleInput;
  String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal expense for GIT'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            /*
            Eng :
            double.infinity allow to take the size as much as it can get.
            Fr :
            double.infinity permet de prendre toute les largeur possible.
            */
            width: double.infinity,
            child: Card(
            color: Colors.blue,
              elevation: 5,
              child: Text('Chart'),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    onChanged: (value) {
                      titleInput = value;
                    },
                    // OR SHORTER : onChanged: (value) => titleInput = value,

                    decoration: InputDecoration(hintText: 'Title'),),
                  TextField(
                    onChanged: (value) {
                      amountInput = value;
                    },
                    decoration: InputDecoration(hintText: 'amount'),),
                  FlatButton(onPressed: () {
                    print(titleInput + amountInput);
                  }, child: Text('Add transaction'), textColor: Colors.purple,),
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tx.title, style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
                        Text(DateFormat.yMMMMEEEEd().format(tx.date), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900, color: Colors.grey),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2),),
                      child: Text('${tx.amount.toString()} €', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.purple),),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
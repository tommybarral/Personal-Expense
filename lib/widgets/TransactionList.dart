import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/transaction.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return  Column(
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
    );
  }
}

import 'package:flutter/material.dart';
import '../model/transaction.dart';
import './NewTransaction.dart';
import './TransactionList.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transaction> _userTransaction = [
    //DUMMY transactions for example.
    //exemple de transactions.
    Transaction(id: 't1', title: 'new shoes', amount: 29.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'new shirt', amount: 14.99, date: DateTime.now()),
    Transaction(id: 't3', title: 'new glasses', amount: 39.99, date: DateTime.now()),
  ];

  void _addingNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now()
    );

    setState(() {
    _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addingNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}

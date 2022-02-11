import 'package:flutter/material.dart';
import '../widgets/UserTransaction.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personal expense for GIT'),),
      body: SingleChildScrollView(
        child: UserTransactions(),
      ),
    );
  }
}


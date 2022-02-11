import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(hintText: 'Title'),),
            TextField(
              controller: amountController,
              decoration: InputDecoration(hintText: 'amount'),),
            FlatButton(onPressed: () {
              addTx(titleController.text, double.parse(amountController.text),);
            }, child: Text('Add a transaction'), textColor: Colors.purple),
          ],
        ),
      ),
    );
  }
}

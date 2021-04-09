import 'package:flutter/material.dart';
import 'package:personalexpensesapp/NewTransaction.dart';
import 'package:personalexpensesapp/TransactionsList.dart';
import 'Transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  _addNewTransaction(String title, double amount) {
  
    final newTx = Transaction(
        name: title, amount: amount, txDate: DateTime.now(), id: 1);
    setState(() {
      transactions.add(newTx);
    });
  }

  final List<Transaction> transactions = [
    Transaction(id: 34, amount: 68.9, name: 'Shoes', txDate: DateTime.now()),
    Transaction(
        id: 35, amount: 27.9, name: 'food', txDate: DateTime.now()),
  ]; // igno
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addtx: _addNewTransaction),
        TransactionsList(transactions)
      ],
    );
  }
}

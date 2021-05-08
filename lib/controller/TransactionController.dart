import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personalexpensesapp/Transaction.dart';

class TransactionController extends GetxController {
  // ignore: deprecated_member_use
  var transactionList = List<Transaction>().obs;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  @override
  onInit() {
    fetchTransaction();
    super.onInit();
  }

  void fetchTransaction() async {
    List<Transaction> temp = [
      // Transaction(
      //     id: 1, amount: 40.89, name: 'You Tube', txDate: DateTime.now()),
      // Transaction(
      //     id: 1, amount: 78.90, name: 'Facebook', txDate: DateTime.now()),
    ];
    transactionList.value = temp;
  }

  addNewTransaction() {
    String title = titleController.text;
    String amount = amountController.text;
    // ignore: unused_local_variable
    final newTx = Transaction(
        name: title,
        amount: double.parse(amount),
        txDate: DateTime.now(),
        id: 1);

    transactionList.add(newTx);
    titleController.clear();
    amountController.clear();
  }
}

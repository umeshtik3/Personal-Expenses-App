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
    List temp = [
      Transaction(
          id: 1, amount: 40.89, name: 'You Tube', txDate: DateTime.now()),
      Transaction(
          id: 1, amount: 78.90, name: 'Facebook', txDate: DateTime.now()),
    ];
    transactionList.value = temp;
  }

  addNewTransaction(String title, double amount) {
    final newTx =
        Transaction(name: title, amount: amount, txDate: DateTime.now(), id: 1);
  }
}

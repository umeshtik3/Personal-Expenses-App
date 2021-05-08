import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:personalexpensesapp/controller/TransactionController.dart';
import 'Transaction.dart';

class TransactionsList extends StatelessWidget {
  TransactionController txController = Get.put(TransactionController());
  final List<Transaction> txlist;
  TransactionsList(this.txlist);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
        height: 300,
        child: ListView.builder(
          itemBuilder: (cntx, index) {
            return Card(
              child: Row(
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2.5)),
                      child: Text(
                        '\$${txController.transactionList[index].amount}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      )),
                  Column(
                    children: [
                      Text(
                        txController.transactionList[index].name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat.yMMMd()
                            .format(txController.transactionList[index].txDate),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: txController.transactionList.length,
        )));
  }
}

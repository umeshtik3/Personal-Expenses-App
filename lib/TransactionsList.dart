import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:personalexpensesapp/controller/TransactionController.dart';

// ignore: must_be_immutable
class TransactionsList extends StatelessWidget {
  TransactionController txController = Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    return Obx(() =>  Container(
            height: 300,
            child:txController.transactionList.isEmpty
        ? Column(children: [
            Text('No Transaction is added yet!!!'),
            Flexible(fit: FlexFit.loose,child: Image.asset('assets/images/waiting.png'))
          ])
        : ListView.builder(
              itemBuilder: (cntx, index) {
                return Card(
                    child: ListTile(
                  leading: Container(
                      // margin:
                          // EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2.5)),
                      child: Text(
                        // '90',
                        '\$${txController.transactionList[index].amount}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      )),
                  title: Text(
                    txController.transactionList[index].name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    DateFormat.yMMMd()
                        .format(txController.transactionList[index].txDate),
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => txController.deleteTransaction(index)),
                ));
              },
              itemCount: txController.transactionList.length,
            )));
  }
}

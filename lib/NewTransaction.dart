import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addtx;

  NewTransaction({this.addtx});
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
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
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 2,
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            TextButton(
                onPressed: () {
                  addtx(titleController.text,
                      double.parse(amountController.text));
                },
                child: Text('Add Transaction'))
          ],
        ),
      ),
    );
  }
}

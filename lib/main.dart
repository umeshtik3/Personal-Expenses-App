import 'package:flutter/material.dart';
import 'package:personalexpensesapp/NewTransaction.dart';
import 'package:personalexpensesapp/TransactionsList.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage('Fluuter'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage(this.title);

  showingModalSheet(context) {
    return showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return NewTransaction();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), actions: [
        IconButton(
            icon: Icon(Icons.add), onPressed: () => showingModalSheet(context))
      ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.blue,
              child: Container(
                width: double.infinity,
                child: Text('CHART!'),
              ),
            ),

            // Card(
            //   child: Container(
            //     padding: EdgeInsets.all(10),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.end,
            //       children: [
            //         TextField(
            //           controller: titleController,
            //           decoration: InputDecoration(labelText: 'Title'),
            //         ),
            //         TextField(
            //           controller: amountController,
            //           decoration: InputDecoration(labelText: 'Amount'),
            //         ),
            //         TextButton(
            //             onPressed: () {
            //               print(titleController.text);
            //               print(amountController.text);
            //             },
            //             child: Text('Add Transaction'))
            //       ],
            //     ),
            //   ),
            // ),
            // Column(
            //     children: transactions.map((tx) {
            //   return Card(
            //     child: Row(
            //       children: [
            //         Container(
            //             margin:
            //                 EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            //             padding: EdgeInsets.all(15),
            //             decoration: BoxDecoration(
            //                 border: Border.all(color: Colors.purple, width: 2.5)),
            //             child: Text(
            //               '\$${tx.amount}',
            //               style: TextStyle(
            //                   fontSize: 18,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.purple),
            //             )),
            //         Column(
            //           children: [
            //             Text(
            //               tx.name,
            //               style: TextStyle(
            //                 fontSize: 18,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             Text(
            //               DateFormat.yMMMd().format(tx.txDate),
            //               style: TextStyle(color: Colors.grey),
            //             )
            //           ],
            //         )
            //       ],
            //     ),
            //   );
            // }).toList())
            TransactionsList()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showingModalSheet(context),
      ),
    );
  }
}

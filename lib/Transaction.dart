import 'package:flutter/widgets.dart';

class Transaction {
  final String name;
  final int id;
  final double amount;
  DateTime txDate;
  Transaction(
      {@required this.amount,
      @required this.id,
      @required this.name,
      @required this.txDate});
}

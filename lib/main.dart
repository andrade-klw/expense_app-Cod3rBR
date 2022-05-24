import 'package:flutter/material.dart';
import 'package:flutter_curse/components/transaction_form.dart';
import 'package:flutter_curse/components/transaction_list.dart';
import 'package:flutter_curse/models/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(ExpensesAPP());

class ExpensesAPP extends StatelessWidget {
  const ExpensesAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  
  

  final _transactions = [
    Transaction(
      id: "t1",
      title: "Tenis",
      value: 380.58,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas Pessoais"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text("graf"),
              color: Colors.blue,
            ),
          ),
          TransactionList(_transactions),
          TransactionForm(),
   
        ],
      ),
    );
  }
}

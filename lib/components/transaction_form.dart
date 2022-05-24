import 'package:flutter/material.dart';









class TransactionForm extends StatelessWidget {


  final titleController = TextEditingController();
  final valueController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return        Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: "Título",
                    ),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: InputDecoration(
                      labelText: "Valor (R\$)",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text("Nova Trans"),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.purple,
                            primary: Colors.black),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }
}
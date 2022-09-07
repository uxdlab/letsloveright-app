import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Transactions")),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (e, index) {
            return Container(
              height: 100,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.grey,
                ),
                image: const DecorationImage(
                  image: AssetImage("assets/images/transactions.png"),
                  fit: BoxFit.contain,
                ),
              ),
            );
          }),
    );
  }
}

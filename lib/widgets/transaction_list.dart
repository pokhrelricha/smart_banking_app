import 'package:flutter/material.dart';
import 'package:smart_banking/widgets/transaction_tile.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent Transactions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              TransactionTile(
                  title: 'Grocery Shopping',
                  amount: '-\$45.23',
                  date: '12 Dec 2024'),
              TransactionTile(
                  title: 'Salary', amount: '+\$1,200.00', date: '10 Dec 2024'),
              TransactionTile(
                  title: 'Electric Bill',
                  amount: '-\$80.00',
                  date: '09 Dec 2024'),
            ],
          ),
        ],
      ),
    );
  }
}

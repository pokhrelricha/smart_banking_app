import 'package:flutter/material.dart';
import 'package:smart_banking/widgets/balance_card.dart';
import 'package:smart_banking/widgets/quick_actions.dart';
import 'package:smart_banking/widgets/transaction_list.dart';

import '../models/action_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actions = [
      ActionData(
        icon: Icons.send,
        label: 'Transfer',
        onPressed: () {
          print('Transfer pressed');
        },
      ),
      ActionData(
        icon: Icons.payments,
        label: 'Pay Bill',
        onPressed: () {
          print('Pay Bill pressed');
        },
      ),
      ActionData(
        icon: Icons.request_page,
        label: 'Request',
        onPressed: () {
          print('Request pressed');
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Banking'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              print('Notifications pressed');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BalanceCard(),
            QuickActions(actions: actions),
            const TransactionList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
            // Navigate to Home
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
            // Navigate to Cards
              Navigator.pushReplacementNamed(context, '/cards');
              break;
            case 2:
            // Navigate to Profile
              Navigator.pushReplacementNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}

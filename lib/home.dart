// import 'package:flutter/material.dart';
// import 'package:smart_banking/widgets/custom_button.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Welcome to Modern Banking'),
//         backgroundColor: Colors.indigo,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Account Overview Section
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.indigoAccent,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Account Balance',
//                     style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     '\$10,250.50',  // Dummy account balance
//                     style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Account Number: 1234 5678 9012 3456',  // Dummy account number
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                 ],
//               ),
//             ),
//
//             SizedBox(height: 20),
//
//             // Recent Transactions Section
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, spreadRadius: 4)],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Recent Transactions',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 12),
//                   _buildTransactionItem('Transfer to John', '\$250.00', '20 Jan 2025'),
//                   SizedBox(height: 10),
//                   _buildTransactionItem('Grocery Shopping', '\$85.30', '19 Jan 2025'),
//                   SizedBox(height: 10),
//                   _buildTransactionItem('Rent Payment', '\$1200.00', '18 Jan 2025'),
//                 ],
//               ),
//             ),
//
//             SizedBox(height: 20),
//
//             // Quick Actions Section
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Text(
//                   'Quick Actions',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 12),
//                 CustomButton(
//                   label: 'Transfer Money',
//                   onPressed: () {},
//                   color: Colors.blue,
//                   icon: Icons.send,
//                 ),
//                 SizedBox(height: 10),
//                 CustomButton(
//                   label: 'Pay Bills',
//                   onPressed: () {},
//                   color: Colors.green,
//                   icon: Icons.payment,
//                 ),
//                 SizedBox(height: 10),
//                 CustomButton(
//                   label: 'View Transactions',
//                   onPressed: () {},
//                   color: Colors.orange,
//                   icon: Icons.history,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTransactionItem(String description, String amount, String date) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: Text(
//               description,
//               style: TextStyle(fontSize: 14),
//             ),
//           ),
//           SizedBox(width: 10),
//           Text(
//             amount,
//             style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87),
//           ),
//           SizedBox(width: 10),
//           Text(
//             date,
//             style: TextStyle(fontSize: 12, color: Colors.grey[600]),
//           ),
//         ],
//       ),
//     );
//   }
// }

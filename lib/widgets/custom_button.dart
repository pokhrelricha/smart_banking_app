// import 'package:flutter/material.dart';
//
// class CustomButton extends StatelessWidget {
//   final String label;
//   final VoidCallback onPressed;
//   final Color color;
//   final IconData icon;
//
//   const CustomButton({
//     Key? key,
//     required this.label,
//     required this.onPressed,
//     this.color = Colors.blue,
//     this.icon = Icons.add,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton.icon(
//       onPressed: onPressed,
//       icon: Icon(icon),
//       label: Text(label),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: color,
//         padding: EdgeInsets.symmetric(vertical: 14),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

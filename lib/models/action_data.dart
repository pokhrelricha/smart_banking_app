// action_data.dart
import 'package:flutter/cupertino.dart';

class ActionData {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  const ActionData({required this.icon, required this.label, this.onPressed});
}

import 'package:flutter/material.dart';
import 'package:smart_banking/widgets/action_button.dart';

import '../models/action_data.dart';

class QuickActions extends StatelessWidget {
  final List<ActionData> actions;

  const QuickActions({required this.actions, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: actions
            .map((action) => ActionButton(
          icon: action.icon,
          label: action.label,
          onPressed: action.onPressed,
        ))
            .toList(),
      ),
    );
  }
}

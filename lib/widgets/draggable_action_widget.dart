import 'package:flutter/material.dart';

class DraggableActionWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const DraggableActionWidget({required this.icon, required this.label, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
      data: label,
      feedback: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              onPressed: null,
              child: Icon(icon),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      child: Column(
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: null,
            child: Icon(icon),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

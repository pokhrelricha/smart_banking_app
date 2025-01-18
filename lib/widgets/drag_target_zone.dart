import 'package:flutter/material.dart';

class DragTargetZone extends StatefulWidget {
  const DragTargetZone({Key? key}) : super(key: key);

  @override
  State<DragTargetZone> createState() => _DragTargetZoneState();
}

class _DragTargetZoneState extends State<DragTargetZone> {
  String droppedItem = 'Drop Here';

  @override
  Widget build(BuildContext context) {
    return DragTarget<String>(
      onAccept: (data) {
        setState(() {
          droppedItem = data;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$data dropped successfully!')),
        );
      },
      builder: (context, candidateData, rejectedData) {
        return Container(
          height: 100,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              droppedItem,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}

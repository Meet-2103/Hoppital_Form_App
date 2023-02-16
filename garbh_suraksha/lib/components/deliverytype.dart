// ToggleButtons with a single selection.

import 'package:flutter/material.dart';

class DeliveryTypeButtonsSample extends StatefulWidget {
  const DeliveryTypeButtonsSample({super.key});

  @override
  State<DeliveryTypeButtonsSample> createState() =>
      _DeliveryTypeButtonsSampleState();
}

class _DeliveryTypeButtonsSampleState extends State<DeliveryTypeButtonsSample> {
  final List<bool> _selectedoption = <bool>[true, false];
  List<Widget> yn = <Widget>[
    const Text('Normal'),
    const Text('Scissor'),
  ];
  bool vertical = false;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      direction: vertical ? Axis.vertical : Axis.horizontal,
      onPressed: (int index) {
        setState(() {
          // The button that is tapped is set to true, and the others to false.
          for (int i = 0; i < _selectedoption.length; i++) {
            _selectedoption[i] = i == index;
          }
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      selectedBorderColor: Colors.grey[700],
      selectedColor: Colors.white,
      fillColor: Colors.grey[900],
      color: Colors.black,
      constraints: const BoxConstraints(
        minHeight: 30.0,
        minWidth: 60.0,
      ),
      isSelected: _selectedoption,
      children: yn,
    );
  }
}

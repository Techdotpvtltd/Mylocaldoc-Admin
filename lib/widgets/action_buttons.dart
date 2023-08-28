import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons(
      {super.key, required this.onTapEdit, required this.onTapDelete});

  final VoidCallback onTapEdit;
  final VoidCallback onTapDelete;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: onTapEdit,
            ),
            const SizedBox(width: 20), // Add some space between the buttons
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: onTapDelete,
            ),
          ],
        ),
      ),
    );
  }
}

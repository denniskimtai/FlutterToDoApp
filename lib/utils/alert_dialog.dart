import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

class NewTaskAlertDialog extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave, onCancel;

  const NewTaskAlertDialog({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "New to do task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save button
                MyButton(
                  buttonText: "Save",
                  onPressed: onSave,
                ),
                const SizedBox(
                  width: 8,
                ),
                // Cancel button
                MyButton(
                  buttonText: "Cancel",
                  onPressed: onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

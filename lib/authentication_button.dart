import 'package:flutter/material.dart';

class AuthenticationButton extends StatelessWidget {
  final String label;
  final Future<void> Function() action;

  const AuthenticationButton(
      {required this.label, required this.action, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: action,
          child: Text(label),
        ),
      ),
    );
  }
}

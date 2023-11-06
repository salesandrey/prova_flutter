import 'package:flutter/material.dart';

class InputMyTextWidget extends StatelessWidget {

  final String hint = "Digite o seu texto";
  final String errorField;
  final bool hasError;
  final TextEditingController controller;
  final FocusNode focus;

  final Function(String) onSubmitted;

  const InputMyTextWidget({super.key,
    required this.errorField, required this.hasError, required this.onSubmitted, required this.controller, required this.focus});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onSubmitted: onSubmitted,
            controller: controller,
            focusNode: focus,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                errorText: hasError ? errorField : null,
                errorStyle: const TextStyle(color: Colors.yellow),
                filled: true,
                fillColor: Colors.white,
                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))))),
        const SizedBox(height: 10)
      ],
    );
  }
}
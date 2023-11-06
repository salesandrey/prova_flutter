
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputFieldWidget extends StatelessWidget {

  final IconData icon;
  final String label;
  final String errorField;
  final bool hasError;

  final Function(String value) onChange;

  final int length = 20;
  final List<TextInputFormatter>? inputs;
  final String counterText = "";

  const InputFieldWidget({super.key,
    required this.icon,required this.label,
    required this.errorField, required this.hasError,
    required this.onChange, this.inputs});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: const TextStyle(fontSize: 16.0,color: Colors.white)),
        const SizedBox(height: 10),
        TextField(
          maxLength: length,
          onChanged: onChange,
          inputFormatters: inputs,
          decoration: InputDecoration(
            errorText: hasError ? errorField : null,
            errorStyle: const TextStyle(color: Colors.yellow),
            counterText: counterText,
            filled: true,
            fillColor: Colors.white,
            border: const OutlineInputBorder(),
            prefixIcon: Icon(icon,color: Colors.black))),
        const SizedBox(height: 10)
      ],
    );
  }
}

import 'package:flutter/material.dart';

class EmptyDataWidget extends StatelessWidget {

  final String message = "Nenhum texto adicionado\n no momento";

  const EmptyDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message, textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold)));
  }
}
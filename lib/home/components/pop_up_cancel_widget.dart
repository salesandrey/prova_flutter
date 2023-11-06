import 'package:flutter/material.dart';


class PopUpCancelWidget extends StatelessWidget {

  final String title = "Deseja deletar este texto?";

  final Function() delete;

  final String bt = "confirmar";
  final String cancel = "cancelar";

  const PopUpCancelWidget({Key? key, required this.delete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(title: Text(title,style: const TextStyle(color: Color(0xFF00225b),fontSize: 15)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0,
      actions: [
        TextButton(onPressed: delete,
            child: Text(bt,style: const TextStyle(color: Colors.black,fontSize: 12))),
        TextButton(onPressed: () => Navigator.pop(context), child: Text(cancel,style: const TextStyle(color: Colors.black ,fontSize: 12)))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TileTextWidget extends StatelessWidget {

  final String description;

  final Function() delete;
  final Function() edit;

  const TileTextWidget({super.key, required this.description, required this.delete, required this.edit});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(description,style: const TextStyle(color: Colors.black,fontSize: 12)),
        trailing:Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(onPressed: edit, icon: const Icon(Icons.edit,size: 24,color: Colors.black)),
              IconButton(onPressed: delete, icon: const Icon(Icons.cancel,size: 24,color: Colors.red))
            ]));
  }
}

import 'package:flutter/material.dart';

class BioFields extends StatelessWidget {
  const BioFields({Key? key, required this.field, required this.data})
      : super(key: key);

  final String field;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            field,
            style: const TextStyle(fontSize: 15),
          ),
          Text(
            data,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

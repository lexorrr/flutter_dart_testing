import 'package:flutter/material.dart';

class MySelf extends StatelessWidget {
  final int age;
  final String name;
  const MySelf(this.name, this.age);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(name),
        Text('$age')
      ],
    );
  }
}

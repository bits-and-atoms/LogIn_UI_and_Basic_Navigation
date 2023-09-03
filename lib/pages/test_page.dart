import 'package:flutter/material.dart';

class testPage extends StatelessWidget {
  const testPage({super.key});
  final int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('this is counter $count'),
    );
  }
}

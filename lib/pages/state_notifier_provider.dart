import 'package:flutter/material.dart';

class StateNotifierProviderPage extends StatelessWidget {
  const StateNotifierProviderPage({Key? key, required this.color, required this.title}) : super(key: key);
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

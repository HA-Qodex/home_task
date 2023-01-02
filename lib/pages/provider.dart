import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final valueProvider = Provider<String>((ref) => "Huzaifa Ahmed");

class ProviderPage extends ConsumerWidget {
  const ProviderPage({Key? key, required this.color, required this.title})
      : super(key: key);

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Center(child: Text(ref.watch(valueProvider),
      style: Theme.of(context).textTheme.bodyLarge,),
      ),
    );
  }
}

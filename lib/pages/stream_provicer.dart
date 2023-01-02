import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/stream_service.dart';

final valueStreamProvider = StreamProvider.autoDispose((ref) {
  final stream = ref.watch(streamServiceProvider);
  return stream.getStreamData();
});

class StreamProviderPage extends ConsumerWidget {
  const StreamProviderPage({Key? key, required this.color, required this.title})
      : super(key: key);

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(valueStreamProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Center(
          child: data.when(
              data: (data) {
                return Text(data.toString(), style: Theme.of(context).textTheme.displayMedium,);
              },
              error: (error, _) {
                return Text(error.toString(), style: Theme.of(context).textTheme.displayMedium,);
              },
              loading: () {
                return const CircularProgressIndicator();
              })),
    );
  }
}

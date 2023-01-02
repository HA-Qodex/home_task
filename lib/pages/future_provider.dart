import 'package:Riverpod/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// [.family] use in case of payload
final postFutureProvider = FutureProvider.autoDispose((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getPost();
});

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({Key? key, required this.color, required this.title})
      : super(key: key);

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(postFutureProvider);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color,
          title: Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: data.when(data: (data) {
          return RefreshIndicator(
            onRefresh: () async {
              await Future.delayed(const Duration(milliseconds: 2000));
              return ref.refresh(postFutureProvider.future);
            },
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index].title),
                  );
                }),
          );
        }, error: (error, _) {
          return Text(error.toString());
        }, loading: () {
          return const Center(child: CircularProgressIndicator());
        }));
  }
}

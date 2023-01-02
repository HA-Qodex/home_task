import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final valueStateProvider = StateProvider.autoDispose((ref) => 0);

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({Key? key, required this.color, required this.title}) : super(key: key);
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueStateProvider);
    ref.listen(valueStateProvider, (previous, next) {
      if(next % 10 == 0){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("You have reached $next"),
            behavior: SnackBarBehavior.floating,
          )
        );
      }
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(value.toString(),
            style: Theme.of(context).textTheme.displayMedium,),
          ElevatedButton(onPressed: (){
            ref.read(valueStateProvider.notifier).state++;
          }, child: const Text("Increment")),
          ElevatedButton(onPressed: (){
            ref.read(valueStateProvider.notifier).state--;
          }, child: const Text("Decrement")),
          ElevatedButton(onPressed: (){
            ref.invalidate(valueStateProvider);
          }, child: const Text("Reset"))
        ],
      ),
      ),
    );
  }
}

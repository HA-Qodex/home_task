import 'package:Riverpod/pages/change_notifier_provider.dart';
import 'package:Riverpod/pages/future_provider.dart';
import 'package:Riverpod/pages/provider.dart';
import 'package:Riverpod/pages/state_notifier_provider.dart';
import 'package:Riverpod/pages/state_provider.dart';
import 'package:Riverpod/pages/stream_provicer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riverpod',
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => const ProviderPage(
                        color: Colors.redAccent, title: "Provider")
                ));
              },
              child: Container(
                width: 350,
                height: 50,
                color: Colors.redAccent,
                child: Center(
                  child: Text(
                    'Provider',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const StateProviderPage(color: Colors.blueAccent, title: 'State Provider')));
              },
              child: Container(
                width: 350,
                height: 50,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    'State Provider',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const FutureProviderPage(color: Colors.orangeAccent, title: 'Future State Provider')));
              },
              child: Container(
                width: 350,
                height: 50,
                color: Colors.orangeAccent,
                child: Center(
                  child: Text(
                    'Future Provider',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const StreamProviderPage(color: Colors.greenAccent, title: 'Stream State Provider')));
              },
              child: Container(
                width: 350,
                height: 50,
                color: Colors.greenAccent,
                child: Center(
                  child: Text(
                    'Stream Provider',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const StateNotifierProviderPage(color: Colors.purpleAccent, title: 'State Notifier')));
              },
              child: Container(
                width: 350,
                height: 50,
                color: Colors.purpleAccent,
                child: Center(
                  child: Text(
                    'State Notifier',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const ChangeNotifierProviderPage(color: Colors.cyanAccent, title: 'Change Notifier')));
              },
              child: Container(
                width: 350,
                height: 50,
                color: Colors.cyanAccent,
                child: Center(
                  child: Text(
                    'Change Notifier',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

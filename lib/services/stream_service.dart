import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamServiceProvider = Provider((ref) => StreamService());

class StreamService{
  Stream<int> getStreamData(){
    return Stream.periodic(const Duration(seconds: 1), (i)=>i).take(10);
  }
}
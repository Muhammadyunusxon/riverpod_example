import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'count_state.dart';

class CounterNotifier extends StateNotifier<CountState> {
  CounterNotifier() : super(CountState());

  void increment() {
    state= state.copyWith(count: ++state.count);
  }

  addName(String name){
    List<String> list=state.listOfName ?? [];
    list.add(name);
    state=state.copyWith(listOfName: list);

  }
}

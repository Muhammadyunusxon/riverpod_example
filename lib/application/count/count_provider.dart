import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'count_notifier.dart';
import 'count_state.dart';

final counterProvider = StateNotifierProvider<CounterNotifier,CountState>((ref) {
  return CounterNotifier();
});
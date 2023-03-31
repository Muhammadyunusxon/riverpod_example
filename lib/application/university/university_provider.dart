// ignore_for_file: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_example/domain/models/university/university_model.dart';
import 'package:riverpod_example/infrastructure/repo/main_repo.dart';

import '../../domain/interface/main_facade.dart';
part 'university_notifier.dart';
part 'university_state.dart';
part 'university_provider.freezed.dart';

final universityProvider = StateNotifierProvider<UniversityNotifier, UniversityState>((ref) {
  return UniversityNotifier(MainRepo());
});

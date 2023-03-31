part of 'university_provider.dart';

@freezed
class UniversityState with _$UniversityState {
  const factory UniversityState({
    @Default(false) bool isLoading,
    @Default(null) List<University>? listOfUniversity,
  }) = _UniversityState;
}

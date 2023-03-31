// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_model.freezed.dart';
part 'university_model.g.dart';

@freezed
class University with _$University {
  const factory University({
    @JsonKey(name: 'domains') List<String>? domains,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'alpha_two_code') String? alphaTwoCode,
    @JsonKey(name: 'probability') int? probability,
    @JsonKey(name: 'web_pages') List<String>? webPages,
    @JsonKey(name: 'state-province') dynamic stateProvince,
    @JsonKey(name: 'name') String? name,
  }) = _University;

  factory University.fromJson(Map<String, dynamic> json) =>
      _$UniversityFromJson(json);
}

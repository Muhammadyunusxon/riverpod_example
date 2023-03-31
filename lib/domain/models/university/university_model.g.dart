// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_University _$$_UniversityFromJson(Map<String, dynamic> json) =>
    _$_University(
      domains:
          (json['domains'] as List<dynamic>?)?.map((e) => e as String).toList(),
      country: json['country'] as String?,
      alphaTwoCode: json['alpha_two_code'] as String?,
      probability: json['probability'] as int?,
      webPages: (json['web_pages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      stateProvince: json['state-province'],
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_UniversityToJson(_$_University instance) =>
    <String, dynamic>{
      'domains': instance.domains,
      'country': instance.country,
      'alpha_two_code': instance.alphaTwoCode,
      'probability': instance.probability,
      'web_pages': instance.webPages,
      'state-province': instance.stateProvince,
      'name': instance.name,
    };

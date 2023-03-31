// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UniversityState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<University>? get listOfUniversity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversityStateCopyWith<UniversityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityStateCopyWith<$Res> {
  factory $UniversityStateCopyWith(
          UniversityState value, $Res Function(UniversityState) then) =
      _$UniversityStateCopyWithImpl<$Res, UniversityState>;
  @useResult
  $Res call({bool isLoading, List<University>? listOfUniversity});
}

/// @nodoc
class _$UniversityStateCopyWithImpl<$Res, $Val extends UniversityState>
    implements $UniversityStateCopyWith<$Res> {
  _$UniversityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listOfUniversity = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfUniversity: freezed == listOfUniversity
          ? _value.listOfUniversity
          : listOfUniversity // ignore: cast_nullable_to_non_nullable
              as List<University>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UniversityStateCopyWith<$Res>
    implements $UniversityStateCopyWith<$Res> {
  factory _$$_UniversityStateCopyWith(
          _$_UniversityState value, $Res Function(_$_UniversityState) then) =
      __$$_UniversityStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<University>? listOfUniversity});
}

/// @nodoc
class __$$_UniversityStateCopyWithImpl<$Res>
    extends _$UniversityStateCopyWithImpl<$Res, _$_UniversityState>
    implements _$$_UniversityStateCopyWith<$Res> {
  __$$_UniversityStateCopyWithImpl(
      _$_UniversityState _value, $Res Function(_$_UniversityState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listOfUniversity = freezed,
  }) {
    return _then(_$_UniversityState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfUniversity: freezed == listOfUniversity
          ? _value._listOfUniversity
          : listOfUniversity // ignore: cast_nullable_to_non_nullable
              as List<University>?,
    ));
  }
}

/// @nodoc

class _$_UniversityState implements _UniversityState {
  const _$_UniversityState(
      {this.isLoading = false, final List<University>? listOfUniversity = null})
      : _listOfUniversity = listOfUniversity;

  @override
  @JsonKey()
  final bool isLoading;
  final List<University>? _listOfUniversity;
  @override
  @JsonKey()
  List<University>? get listOfUniversity {
    final value = _listOfUniversity;
    if (value == null) return null;
    if (_listOfUniversity is EqualUnmodifiableListView)
      return _listOfUniversity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UniversityState(isLoading: $isLoading, listOfUniversity: $listOfUniversity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniversityState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._listOfUniversity, _listOfUniversity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_listOfUniversity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniversityStateCopyWith<_$_UniversityState> get copyWith =>
      __$$_UniversityStateCopyWithImpl<_$_UniversityState>(this, _$identity);
}

abstract class _UniversityState implements UniversityState {
  const factory _UniversityState(
      {final bool isLoading,
      final List<University>? listOfUniversity}) = _$_UniversityState;

  @override
  bool get isLoading;
  @override
  List<University>? get listOfUniversity;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityStateCopyWith<_$_UniversityState> get copyWith =>
      throw _privateConstructorUsedError;
}

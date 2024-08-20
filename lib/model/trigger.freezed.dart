// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trigger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trigger _$TriggerFromJson(Map<String, dynamic> json) {
  return _Trigger.fromJson(json);
}

/// @nodoc
mixin _$Trigger {
  String? get jobId => throw _privateConstructorUsedError;
  String? get triggerTitle => throw _privateConstructorUsedError;
  bool? get triggerClear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriggerCopyWith<Trigger> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriggerCopyWith<$Res> {
  factory $TriggerCopyWith(Trigger value, $Res Function(Trigger) then) =
      _$TriggerCopyWithImpl<$Res, Trigger>;
  @useResult
  $Res call({String? jobId, String? triggerTitle, bool? triggerClear});
}

/// @nodoc
class _$TriggerCopyWithImpl<$Res, $Val extends Trigger>
    implements $TriggerCopyWith<$Res> {
  _$TriggerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = freezed,
    Object? triggerTitle = freezed,
    Object? triggerClear = freezed,
  }) {
    return _then(_value.copyWith(
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      triggerTitle: freezed == triggerTitle
          ? _value.triggerTitle
          : triggerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      triggerClear: freezed == triggerClear
          ? _value.triggerClear
          : triggerClear // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TriggerImplCopyWith<$Res> implements $TriggerCopyWith<$Res> {
  factory _$$TriggerImplCopyWith(
          _$TriggerImpl value, $Res Function(_$TriggerImpl) then) =
      __$$TriggerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jobId, String? triggerTitle, bool? triggerClear});
}

/// @nodoc
class __$$TriggerImplCopyWithImpl<$Res>
    extends _$TriggerCopyWithImpl<$Res, _$TriggerImpl>
    implements _$$TriggerImplCopyWith<$Res> {
  __$$TriggerImplCopyWithImpl(
      _$TriggerImpl _value, $Res Function(_$TriggerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = freezed,
    Object? triggerTitle = freezed,
    Object? triggerClear = freezed,
  }) {
    return _then(_$TriggerImpl(
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
      triggerTitle: freezed == triggerTitle
          ? _value.triggerTitle
          : triggerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      triggerClear: freezed == triggerClear
          ? _value.triggerClear
          : triggerClear // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TriggerImpl implements _Trigger {
  _$TriggerImpl({this.jobId, this.triggerTitle, this.triggerClear});

  factory _$TriggerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TriggerImplFromJson(json);

  @override
  final String? jobId;
  @override
  final String? triggerTitle;
  @override
  final bool? triggerClear;

  @override
  String toString() {
    return 'Trigger(jobId: $jobId, triggerTitle: $triggerTitle, triggerClear: $triggerClear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerImpl &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.triggerTitle, triggerTitle) ||
                other.triggerTitle == triggerTitle) &&
            (identical(other.triggerClear, triggerClear) ||
                other.triggerClear == triggerClear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jobId, triggerTitle, triggerClear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriggerImplCopyWith<_$TriggerImpl> get copyWith =>
      __$$TriggerImplCopyWithImpl<_$TriggerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TriggerImplToJson(
      this,
    );
  }
}

abstract class _Trigger implements Trigger {
  factory _Trigger(
      {final String? jobId,
      final String? triggerTitle,
      final bool? triggerClear}) = _$TriggerImpl;

  factory _Trigger.fromJson(Map<String, dynamic> json) = _$TriggerImpl.fromJson;

  @override
  String? get jobId;
  @override
  String? get triggerTitle;
  @override
  bool? get triggerClear;
  @override
  @JsonKey(ignore: true)
  _$$TriggerImplCopyWith<_$TriggerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  int? get jobIdx => throw _privateConstructorUsedError;
  String? get jobTitle => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  bool? get focusedState => throw _privateConstructorUsedError;
  String? get jobTime => throw _privateConstructorUsedError;
  int? get fomodoroCount => throw _privateConstructorUsedError;
  String? get totalFocusTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {int? jobIdx,
      String? jobTitle,
      String? startTime,
      bool? focusedState,
      String? jobTime,
      int? fomodoroCount,
      String? totalFocusTime});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobIdx = freezed,
    Object? jobTitle = freezed,
    Object? startTime = freezed,
    Object? focusedState = freezed,
    Object? jobTime = freezed,
    Object? fomodoroCount = freezed,
    Object? totalFocusTime = freezed,
  }) {
    return _then(_value.copyWith(
      jobIdx: freezed == jobIdx
          ? _value.jobIdx
          : jobIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      focusedState: freezed == focusedState
          ? _value.focusedState
          : focusedState // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobTime: freezed == jobTime
          ? _value.jobTime
          : jobTime // ignore: cast_nullable_to_non_nullable
              as String?,
      fomodoroCount: freezed == fomodoroCount
          ? _value.fomodoroCount
          : fomodoroCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFocusTime: freezed == totalFocusTime
          ? _value.totalFocusTime
          : totalFocusTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? jobIdx,
      String? jobTitle,
      String? startTime,
      bool? focusedState,
      String? jobTime,
      int? fomodoroCount,
      String? totalFocusTime});
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobIdx = freezed,
    Object? jobTitle = freezed,
    Object? startTime = freezed,
    Object? focusedState = freezed,
    Object? jobTime = freezed,
    Object? fomodoroCount = freezed,
    Object? totalFocusTime = freezed,
  }) {
    return _then(_$JobImpl(
      jobIdx: freezed == jobIdx
          ? _value.jobIdx
          : jobIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      focusedState: freezed == focusedState
          ? _value.focusedState
          : focusedState // ignore: cast_nullable_to_non_nullable
              as bool?,
      jobTime: freezed == jobTime
          ? _value.jobTime
          : jobTime // ignore: cast_nullable_to_non_nullable
              as String?,
      fomodoroCount: freezed == fomodoroCount
          ? _value.fomodoroCount
          : fomodoroCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFocusTime: freezed == totalFocusTime
          ? _value.totalFocusTime
          : totalFocusTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobImpl implements _Job {
  _$JobImpl(
      {this.jobIdx,
      this.jobTitle,
      this.startTime,
      this.focusedState,
      this.jobTime,
      this.fomodoroCount,
      this.totalFocusTime});

  factory _$JobImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobImplFromJson(json);

  @override
  final int? jobIdx;
  @override
  final String? jobTitle;
  @override
  final String? startTime;
  @override
  final bool? focusedState;
  @override
  final String? jobTime;
  @override
  final int? fomodoroCount;
  @override
  final String? totalFocusTime;

  @override
  String toString() {
    return 'Job(jobIdx: $jobIdx, jobTitle: $jobTitle, startTime: $startTime, focusedState: $focusedState, jobTime: $jobTime, fomodoroCount: $fomodoroCount, totalFocusTime: $totalFocusTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            (identical(other.jobIdx, jobIdx) || other.jobIdx == jobIdx) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.focusedState, focusedState) ||
                other.focusedState == focusedState) &&
            (identical(other.jobTime, jobTime) || other.jobTime == jobTime) &&
            (identical(other.fomodoroCount, fomodoroCount) ||
                other.fomodoroCount == fomodoroCount) &&
            (identical(other.totalFocusTime, totalFocusTime) ||
                other.totalFocusTime == totalFocusTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jobIdx, jobTitle, startTime,
      focusedState, jobTime, fomodoroCount, totalFocusTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobImplToJson(
      this,
    );
  }
}

abstract class _Job implements Job {
  factory _Job(
      {final int? jobIdx,
      final String? jobTitle,
      final String? startTime,
      final bool? focusedState,
      final String? jobTime,
      final int? fomodoroCount,
      final String? totalFocusTime}) = _$JobImpl;

  factory _Job.fromJson(Map<String, dynamic> json) = _$JobImpl.fromJson;

  @override
  int? get jobIdx;
  @override
  String? get jobTitle;
  @override
  String? get startTime;
  @override
  bool? get focusedState;
  @override
  String? get jobTime;
  @override
  int? get fomodoroCount;
  @override
  String? get totalFocusTime;
  @override
  @JsonKey(ignore: true)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

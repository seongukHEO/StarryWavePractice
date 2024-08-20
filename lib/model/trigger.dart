import 'package:freezed_annotation/freezed_annotation.dart';

part 'trigger.freezed.dart';

part 'trigger.g.dart';

@freezed
sealed class Trigger with _$Trigger{
  factory Trigger({
    String? jobId,
    String? triggerTitle,
    bool? triggerClear
}) = _Trigger;

  factory Trigger.fromJson(Map<String, dynamic> json) => _$TriggerFromJson(json);
}
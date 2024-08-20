import 'package:cloud_firestore/cloud_firestore.dart';
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

  factory Trigger.fromDocument(DocumentSnapshot doc){
    final data = doc.data() as Map<String, dynamic>;
    return Trigger(
      jobId: data['jobId'] ?? "",
      triggerTitle: data['triggerTitle'] ?? "",
      triggerClear: data['triggerClear'] ?? false
    );
  }

  factory Trigger.fromJson(Map<String, dynamic> json) => _$TriggerFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String taskId,
    required String taskName,
    required String taskUrl,
    required String taskType,
    required int token,
    required DateTime createdAt,
    @JsonKey(name: 'is_completed') required bool isCompleted,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);
}

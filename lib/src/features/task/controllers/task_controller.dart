import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/features/task/models/task_model.dart';
import 'package:scora/src/features/task/services/task_service.dart';

part 'task_controller.g.dart';

@riverpod
class TaskController extends _$TaskController {
  @override
  Future<List<TaskModel>> build() async {
    return await getTaskList();
  }

  Future<List<TaskModel>> getTaskList() async {
    state = const AsyncValue.loading();
    try {
      final response = await ref.read(TaskServiceProvider).getTask();

      if (response.containsKey('data') && response['data'] is List) {
        final List<TaskModel> taskList = (response['data'] as List)
            .map((task) => TaskModel.fromJson(task))
            .toList();

        state = AsyncValue.data(taskList);
        return taskList;
      } else {
        state = AsyncValue.data([]);
        return [];
      }
    } catch (e){
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load Task: $e');
    }
  }
}

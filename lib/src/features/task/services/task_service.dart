import 'package:http/http.dart' as http;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/shared/shared.dart';

final TaskServiceProvider = Provider.autoDispose<TaskService>((ref) {
  final networkService = ref.watch(NetworkAuthServiceProvider);

  return TaskService(networkService: networkService);
});

class TaskService {
  final NetworkAuthService networkService;

  TaskService({required this.networkService});

  Future<Map<String, dynamic>> getTask(
      {String page = "1", String limit = "100"}) async {
    final response = await networkService.get('/task/list', queryParams: {
      "page": page,
      "limit": limit,
    });

    return response;
  }

  Future<Map<String, dynamic>> getTaskById({required String taskId}) async {
    final response = await networkService
        .get('/task/detail', queryParams: {"masterTaskId": taskId});

    return response;
  }

  Future<Map<String,dynamic>> verifyTask({required String taskId}) async {
    final response = await networkService
        .post('/task/verify',
        {
          "masterTaskId": taskId,
        }
    );

    return response;
  }


// void _storeToken (String token) async {
//   await prefService.setPref('token', token);
// }
}

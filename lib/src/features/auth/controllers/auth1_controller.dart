import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/shared/services/preferences_service.dart';
import '../services/auth_service.dart';

part 'auth1_controller.g.dart';

@riverpod
class AuthController1 extends _$AuthController1 {
  @override
  FutureOr<void> build() {

  }

  Future<void> signUp(
      {required String email,
      required String password,
      required String username,
      String? referallCode}) async {
    final authService = ref.read(AuthServiceProvider);
    state = const AsyncLoading();

    state = await AsyncValue.guard(()async{
      // final result = await authService.signup(
      //   email: email,
      //   password: password,
      //   username: username,
      //   referralCode: referallCode ?? '',
      // );
    //   print(result);
    //   // Assuming the result contains a token, store it in SharedPreferences
    //   if (result['statusCode'] == 200) {
    //     await ref.read(prefProvider).setPref('token', result['data']['token']);
    //   }
    //   return result;
    }



    );
  }
}

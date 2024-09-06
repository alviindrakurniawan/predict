import 'package:http/http.dart' as http;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scora/src/shared/shared.dart';

final AuthServiceProvider = Provider.autoDispose<AuthService>((ref) {
  final networkService = ref.watch(NetworkAuthServiceProvider);

  return AuthService(networkService: networkService);
});

class AuthService {
  final NetworkAuthService networkService;




  AuthService({required this.networkService});

    Future<Map<String, dynamic>> login({required String email, required String password,required String deviceToken}) async {
    final response = await networkService.post(
      '/auth/sign-in',
      {
        'email': email,
        'password': password,
        'deviceToken': deviceToken
      },
    );

    return response;
  }

  Future<Map<String, dynamic>> signup({required String email, required String password, required String username,required String referralCode,required String deviceToken }) async {
    final response = await networkService.post(
      '/auth/sign-up',
        {
          "email": email,
          "password": password,
          "username": username,
          "referralCode": referralCode,
          "deviceToken": deviceToken
        },
    );

    return response;
  }

  Future<Map<String,dynamic>> forgotPassword({required String email}) async {
    final response = await networkService.post(
      '/auth/forgot-password',
      {
        'email': email,
      },
    );

    return response;
  }
  Future<Map<String,dynamic>> createNewPassword({required String email, required String password,required String token,required String deviceToken}) async {

    final response = await networkService.post(
      '  /auth/create-new-password',
      {
        'email': email,
        'token': token,
        'password': password,
        'deviceToken': deviceToken
      },
    );

    return response;
  }


  Future<Map<String,dynamic>> verifyOTP({required String email, required String otp}) async {
    final response = await networkService.post(
      '/auth/verify-forgot-password-otp',
      {
        'email': email,
        'otp': otp,
      },
    );

    return response;
  }

  Future<Map<String,dynamic>> sendOTPRegister({required String email}) async {
    final response = await networkService.post(
      ' /auth/send-otp-register-user',
      {
        'email': email,
      },
    );

    return response;
  }

  Future<Map<String, dynamic>> completeProfile(
      {required String fullName,
        required String dob,
        required String countryId}) async {
    final response = await networkService.post(
      '/users/me/complete-profile',
      {
        "name": fullName,
        "phone": "0812412751",
        "dob": dob,
        "countryId": countryId
      },
    );

    return response;
  }

  Future<Map<String,dynamic>> verifyRegisterOTP({required String email, required String otp,required String deviceToken}) async {
    final response = await networkService.post(
      '/auth/verify-otp-register-user',
      {
        'email': email,
        'otp': otp,
        'deviceToken': deviceToken
      },
    );

    return response;
  }


  // void _storeToken (String token) async {
  //   await prefService.setPref('token', token);
  // }

}
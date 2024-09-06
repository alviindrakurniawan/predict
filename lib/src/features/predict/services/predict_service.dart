// import 'package:http/http.dart' as http;
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:scora/src/shared/services/network_feature_service.dart';
// import 'package:scora/src/shared/shared.dart';
//
// final ProfileServiceProvider = Provider.autoDispose<ProfileService>((ref) {
//   final networkService = ref.watch(NetworkFeatureServiceProvider);
//
//   return ProfileService(networkService: networkService);
// });
//
// class ProfileService {
//   final NetworkFeatureService networkService;
//
//   ProfileService({required this.networkService});
//
//   Future<Map<String, dynamic>> getInfoUser() async {
//     final response = await networkService.get(
//       '/users/me',
//     );
//
//     return response;
//   }
//
//   Future<Map<String, dynamic>> completeProfile(
//       {required String fullName,
//         required String dob,
//         required String countryId}) async {
//     final response = await networkService.post(
//       '/users/me/complete-profile',
//       {
//         "name": fullName,
//         "phone": "0812412751",
//         "dob": dob,
//         "countryId": countryId
//       },
//     );
//
//     return response;
//   }
//
//   Future<Map<String, dynamic>> editProfile(
//       {required String fullName,
//         required String dob,
//         required String countryId}) async {
//     final response = await networkService.post(
//       '/users/me/edit-profile',
//       {
//         "name": fullName,
//         "phone": "0812412751",
//         "dob": dob,
//         "countryId": countryId
//       },
//     );
//
//     return response;
//   }
//
//
//   Future<Map<String, dynamic>> getReferralList() async {
//     final response = await networkService.get(
//         '/users/me/referral-list',
//         queryParams: {
//           "page": "1",
//           "limit": "100"
//         }
//     );
//
//     return response;
//   }
//
//
//
//
//   Future<Map<String, dynamic>> verifyOTP(
//       {required String email, required String otp}) async {
//     final response = await networkService.post(
//       '/auth/verify-forgot-password-otp',
//       {
//         'email': email,
//         'otp': otp,
//       },
//     );
//
//     return response;
//   }
//
//   Future<Map<String, dynamic>> sendOTPRegister({required String email}) async {
//     final response = await networkService.post(
//       ' /auth/send-otp-register-user',
//       {
//         'email': email,
//       },
//     );
//
//     return response;
//   }
//
//   Future<Map<String, dynamic>> verifyRegisterOTP(
//       {required String email, required String otp}) async {
//     final response = await networkService.post(
//       '/auth/verify-otp-register-user',
//       {
//         'email': email,
//         'otp': otp,
//       },
//     );
//
//     return response;
//   }
//
//   Future<Map<String, dynamic>> resetPassword(
//       {required String email,
//         required String password,
//         required String token}) async {
//     final response = await networkService.post('/auth/create-new-password',
//         {"email": email, "token": token, "password": password});
//
//     return response;
//   }
//
// // void _storeToken (String token) async {
// //   await prefService.setPref('token', token);
// // }
// }

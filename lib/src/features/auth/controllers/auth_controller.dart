// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:scora/src/features/auth/services/auth_service.dart';
// import 'package:another_flushbar/flushbar.dart';
//
// final AuthProvider =
//     AsyncNotifierProvider.autoDispose<AuthControllerProvider, void>(() {
//   return AuthControllerProvider();
// });
//
// class AuthControllerProvider extends AutoDisposeAsyncNotifier<void> {
//   late final AuthService _authService;
//
//   @override
//   Future<void> build() async {
//     _authService = ref.read(AuthServiceProvider);
//   }
//
//   Future<void> login({required String email, required String password}) async {
//     state = const AsyncValue.loading();
//
//     _authService.login(email: email, password: password).then((data) {
//       if (data['status'] == 'success') {
//         state = const AsyncValue.data(null);
//       } else {
//         //   snackbar warning?
//       }
//     }).onError((e, stackTrace) {
//       state = AsyncValue.error(e as Object, stackTrace);
//     });
//   }
//
//   // Future<void> register(
//   //     {required String email,
//   //     required String password,
//   //     required String name,
//   //     required String walletAccount}) async {
//   //   state = const AsyncValue.loading();
//   //
//   //   _authService
//   //       .signup(
//   //           email: email,
//   //           password: password,
//   //           name: name,
//   //           walletAccount: walletAccount)
//   //       .then((data) {
//   //     state = const AsyncValue.data(null);
//   //   }).onError(
//   //     (e, stackTrace) {
//   //       state = AsyncValue.error(e as Object, stackTrace);
//   //     },
//   //   );
//   // }
//
//   Future<void> forgotPassword({required String email}) async {
//     state = const AsyncValue.loading();
//   }
//
// //   void showSuccessSnackbar({required String title, required String message}) {
// //     Flushbar(
// //       title: title,
// //       message: message,
// //       margin: EdgeInsets.all(8),
// //       borderRadius: BorderRadius.circular(8),
// //       icon: Icon(
// //         Icons.check,
// //         size: 28.0,
// //         color: Colors.green,
// //       ),
// //       backgroundColor: Colors.blueGrey,
// //       duration: Duration(seconds: 2),
// //     ).show();
// //   }
// //
// //   void showFailedSnackbar({required String title, required String message}) {
// //     Flushbar(
// //       title: title,
// //       message: message,
// //       margin: EdgeInsets.all(8),
// //       borderRadius: BorderRadius.circular(8),
// //       icon: Icon(
// //         Icons.info_outline,
// //         size: 28.0,
// //         color: Colors.white,
// //       ),
// //       backgroundColor: Colors.red,
// //       duration: Duration(seconds: 2),
// //     ).show();
// //   }
// }

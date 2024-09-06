import 'package:scora/src/features/features.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

import 'package:scora/src/features/profile/models/user_model.dart';

part 'profile_controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<UserModel?> build() async {
    return await getUserInfo();
  }

  Future<UserModel?> getUserInfo() async {
    state = const AsyncValue.loading();
    try {
      final service = ref.read(ProfileServiceProvider);
      final response = await service.getInfoUser();
      developer.log('User Info: $response');
      if (response.containsKey('data')) {
        final userModel = UserModel.fromJson(response['data']);
        developer.log('User Info: $userModel');
        state = AsyncValue.data(userModel);
        return userModel;
      } else {
        state = AsyncValue.error('User info not found', StackTrace.current);

      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load user info: $e');
    }
  }

  Future<UserModel?> editProfile({required String fullname,required String dob,required String countryId})async{
    state = const AsyncValue.loading();
    try{
      final service = ref.read(ProfileServiceProvider);
      final response = await service.editProfile(fullName: fullname, dob: dob, countryId:countryId);
      if(response.containsKey('data')){
        final userModel = UserModel.fromJson(response['data']);
        state = AsyncValue.data(userModel);
        return userModel;
      }else{
        state = AsyncValue.error('Edit Profile Failed', StackTrace.current);
      }

    }catch(e){
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to edit profile: $e');

    }
  }
}

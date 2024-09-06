import 'package:scora/src/features/features.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:developer' as developer;

import 'package:scora/src/features/profile/models/referral_model.dart';

part 'referral_controller.g.dart';

@riverpod
class ReferralController extends _$ReferralController {
  @override
  FutureOr<List<ReferralModel>?> build() async {
    return await getReferralList();
  }

  Future<List<ReferralModel>?> getReferralList() async {
    state = const AsyncValue.loading();
    try {
      final service = ref.read(ProfileServiceProvider);
      final response = await service.getReferralList();
      if (response.containsKey('data')) {
        developer.log('responsss $response');

        //check empty data
        if (response['data'].isEmpty) {
          state = AsyncValue.data([]);
          return [];
        }
        final List<ReferralModel>? refferrals = (response['data'] as List<dynamic>)
            .map((json) => ReferralModel.fromJson(json as Map<String, dynamic>))
            .toList();


        state = AsyncValue.data(refferrals);
        return refferrals;
      } else {
        state = AsyncValue.error('Referral list not found', StackTrace.current);
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      throw Exception('Failed to load referral list: $e');
    }
  }
}

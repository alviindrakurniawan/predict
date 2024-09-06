import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_model.freezed.dart';
part 'referral_model.g.dart';

@freezed
class ReferralModel with _$ReferralModel {
  const factory ReferralModel({
    required String reffId,
    required String username,

    required String createdAt,
  }) = _RefferralModel;


  factory ReferralModel.fromJson(Map<String, dynamic> json) => _$ReferralModelFromJson(json);
}
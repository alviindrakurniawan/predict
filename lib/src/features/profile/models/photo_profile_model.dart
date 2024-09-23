import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_profile_model.freezed.dart';
part 'photo_profile_model.g.dart';

@freezed
class PhotoProfileModel with _$PhotoProfileModel {
  const factory PhotoProfileModel({
    required String id,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'imagePath') required String imagePath,
  }) = _PhotoProfileModel;

  factory PhotoProfileModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoProfileModelFromJson(json);
}
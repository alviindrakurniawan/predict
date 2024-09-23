

import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_model.freezed.dart';
part 'summary_model.g.dart';

@freezed
class SummaryModel with _$SummaryModel {
  const factory SummaryModel({
  required String time,
   String? home,
   String? homeIcon,
   String? score,
   String? awayIcon,
   String? away,

  }) = _SummaryModel;


  factory SummaryModel.fromJson(Map<String, dynamic> json) =>
      _$SummaryModelFromJson(json);
}

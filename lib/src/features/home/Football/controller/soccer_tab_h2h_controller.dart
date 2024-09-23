import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scora/src/features/home/Football/models/soccer_H2H_model.dart';
import 'package:scora/src/features/home/services/soccer2_service.dart';

part 'soccer_tab_h2h_controller.g.dart';

@riverpod
class SoccerTabH2HController extends _$SoccerTabH2HController {
  @override
  Future<SoccerH2HModel> build(String homeTeamId, String awayTeamId) async {
    return await getH2HData(homeTeamId, awayTeamId);
  }


  Future<SoccerH2HModel> getH2HData(String homeTeamId, String awayTeamId) async {
    state = AsyncLoading();
    try{
      final service = ref.read(Soccer2ServiceProvider);
      final response = await service.getH2H(
        firstTeamId: homeTeamId,
        secondTeamId: awayTeamId,
      );


      if(response.containsKey('result')){
        final data = SoccerH2HModel.fromJson(response);
        return data;
      }
      return SoccerH2HModel();

    }
    catch(e){
      state = AsyncValue.error(e, StackTrace.current);
      throw ('Failed to load fixtures: $e');
    }

  }
}
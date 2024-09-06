import 'package:scora/src/features/home/models/soccer_fixture.dart';
import 'package:scora/src/features/home/views/components/league_card.dart';

class SoccerOverviewDTO{
  final String title;
  final List<SoccerFixtureResult>? listMatch;
  final List<MatchDetails> listMatchCard;

  SoccerOverviewDTO({
    required this.title,
    required this.listMatch,
    required this.listMatchCard
  });
}


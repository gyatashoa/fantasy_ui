import 'package:flutter/material.dart';

class Scores{
  final String homeTeam;
  final String awayTeam;
  final Duration duration;
  final int homeTeamScore;
  final int awayTeamScore;

  Scores({@required this.awayTeam,
  @required this.awayTeamScore,
  @required this.duration,
  @required this.homeTeam,
  @required this.homeTeamScore});
}


class MatchBundle{
  final String location;
  final List<Scores> matches;

  MatchBundle(this.location, this.matches);
}


final matches = <MatchBundle>[
  MatchBundle('Kumasi',
  [
    Scores(awayTeam: "Asante Kotoko", awayTeamScore: 3, duration: Duration(hours: 2,minutes: 15 ), homeTeamScore: 1, homeTeam:"Ashanti Gold"),
    Scores(awayTeam: "Asante Kotoko", awayTeamScore: 3, duration: Duration(hours: 2,minutes: 15 ), homeTeamScore: 1, homeTeam:"Ashanti Gold"),
  ]
  ),
  MatchBundle('Cape Coast',
  [
    Scores(awayTeam: "Medeama", awayTeamScore: 3, duration: Duration(hours: 2,minutes: 15 ), homeTeamScore: 1, homeTeam:"Legon Cities"),
  ]
  ),
    MatchBundle('Accra',
  [
    Scores(awayTeam: "Karela United", awayTeamScore: 0, duration: Duration(hours: 2,minutes: 15 ), homeTeamScore: 2, homeTeam:"Hearts of Oak"),
    Scores(awayTeam: "Karela United", awayTeamScore: 0, duration: Duration(hours: 2,minutes: 15 ), homeTeamScore: 2, homeTeam:"Hearts of Oak"),
    Scores(awayTeam: "Karela United", awayTeamScore: 0, duration: Duration(hours: 2,minutes: 15 ), homeTeamScore: 2, homeTeam:"Hearts of Oak"),
  ]
  ),
    MatchBundle('Tamale',
  [
    Scores(awayTeam: "Real Tamale United", awayTeamScore: 0, duration: Duration(hours: 2,minutes: 15 ), homeTeamScore: 2, homeTeam:"Wa All Stars"),
  ]
  ),
];

players = Player.create([
                          { name: 'PLayer1', number: 1 },
                          { name: 'Player2', number: 2 },
                          { name: 'Player3', number: 3 },
                          { name: 'Player4', number: 4 },
                          { name: 'Player5', number: 5 },
                          { name: 'Player6', number: 6 }
                        ])

teams = Team.create([
                      { name: 'RED', players_id: players[0] },
                      { name: 'RED', players_id: players[1] },
                      { name: 'RED', players_id: players[2] },
                      { name: 'BLUE', players_id: players[3] },
                      { name: 'BLUE', players_id: players[4] },
                      { name: 'BLUE', players_id: players[5] }
                    ])

matches = Match.create([
                         { place: 'Moscow', teams_id: teams[0].id },
                         { place: 'Moscow', teams_id: teams[1].id},
                         { place: 'London', teams_id: teams[0].id },
                         { place: 'London', teams_id: teams[1].id },
                         { place: 'NewYork', teams_id: teams[0].id },
                         { place: 'NewYork', teams_id: teams[1].id }
                       ])

achievements = Achievement.create([
                                    { name: 'more_than_10_km', conditions: "{\"km\":10}",
                                      players_id: players[0].id, matches_id: matches[0].id },
                                    { name: 'pass_percentage_more_than_70', conditions: "{\"pass_percentage\":70",
                                      players_id: players[1].id, matches_id: matches[0].id },
                                    { name: 'more_than_10_km', conditions: "{\"km\":10}",
                                      players_id: players[2].id, matches_id: matches[1].id },
                                    { name: 'pass_percentage_more_than_70', conditions: "{\"pass_percentage\":70",
                                      players_id: players[3].id, matches_id: matches[1].id },
                                    { name: 'more_than_10_km', conditions: "{\"km\":10}",
                                      players_id: players[4].id, matches_id: matches[2].id },
                                    { name: 'pass_percentage_more_than_70', conditions: "{\"pass_percentage\":70",
                                      players_id: players[5].id, matches_id: matches[2].id }
                                  ])

events = Event.create([
                         { name: 'Event1', match_id: matches[0].id, players_id: players[0].id },
                         { name: 'Event1', match_id: matches[0].id, players_id: players[1].id },
                         { name: 'Event1', match_id: matches[0].id, players_id: players[2].id },
                         { name: 'Event2', match_id: matches[1].id, players_id: players[3].id },
                         { name: 'Event2', match_id: matches[1].id, players_id: players[4].id },
                         { name: 'Event2', match_id: matches[1].id, players_id: players[5].id },
                         { name: 'Event3', match_id: matches[2].id, players_id: players[2].id },
                         { name: 'Event3', match_id: matches[2].id, players_id: players[0].id },
                         { name: 'Event3', match_id: matches[2].id, players_id: players[1].id }
                       ])

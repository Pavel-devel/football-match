achievements = Achievement.create([
                                    { name: 'more_than_10_km', conditions: "{\"km\":10}", ran_kilometers: 15, goals: 1,
                                     players_id: players[0].id, matches_id: matches[0].id },
                                    { name: 'pass_percentage_more_than_70', conditions: "{\"pass_percentage\":70", pass_percentage: 85,
                                     players_id: players[1].id, matches_id: matches[0].id },
                                    { name: 'more_than_10_km', conditions: "{\"km\":10}", ran_kilometers: 8, goals: 2,
                                     players_id: players[2].id, matches_id: matches[1].id },
                                    { name: 'pass_percentage_more_than_70', conditions: "{\"pass_percentage\":70", pass_percentage: 30,
                                     players_id: players[3].id, matches_id: matches[1].id },
                                    { name: 'more_than_10_km', conditions: "{\"km\":10}", ran_kilometers: 25, goals: 0,
                                     players_id: players[4].id, matches_id: matches[0].id },
                                    { name: 'pass_percentage_more_than_70', conditions: "{\"pass_percentage\":70", pass_percentage: 70,
                                     players_id: players[5].id, matches_id: matches[0].id },
                                    { name: 'more_than_10_km', conditions: "{\"km\":10}", ran_kilometers: 30, goals: 1,
                                     players_id: players[6].id, matches_id: matches[1].id },
                                    { name: 'pass_percentage_more_than_70', conditions: "{\"pass_percentage\":70", pass_percentage: 90,
                                     players_id: players[7].id, matches_id: matches[1].id },
                                    { name: 'more_than_10_km', conditions: "{\"km\":10}", ran_kilometers: 22, goals: 2,
                                     players_id: players[8].id, matches_id: matches[0].id },
                                    { name: 'pass_percentage_more_than_70', conditions: "{\"pass_percentage\":70", pass_percentage: 67,
                                     players_id: players[9].id, matches_id: matches[0].id },
                                    { name: 'more_than_10_km', conditions: "{\"km\":10}", ran_kilometers: 17, goals: 1,
                                     players_id: players[10].id, matches_id: matches[1].id },
                                    { name: 'pass_percentage_more_than_70', conditions: "{\"pass_percentage\":70", pass_percentage: 61,
                                     players_id: players[11].id, matches_id: matches[1].id }
                                  ])

matches = Match.create([
                         { place: 'Moscow', achievements_id: achievements[0].id, team_id: teams[0].id },
                         { place: 'Moscow', achievements_id: achievements[1].id, team_id: teams[1].id},
                         { place: 'London', achievements_id: achievements[0].id, team_id: teams[0].id },
                         { place: 'London', achievements_id: achievements[1].id, team_id: teams[1].id }
                       ])

players = Player.create([
               { name: 'PLayer1', number: 1, achievements_id: achievements[0].id, team_id: teams[0].id },
               { name: 'Player1', number: 1, achievements_id: achievements[1].id, team_id: teams[0].id },
               { name: 'Player2', number: 2, achievements_id: achievements[2].id, team_id: teams[0].id },
               { name: 'Player2', number: 2, achievements_id: achievements[3].id, team_id: teams[0].id },
               { name: 'Player3', number: 3, achievements_id: achievements[4].id, team_id: teams[0].id },
               { name: 'Player3', number: 3, achievements_id: achievements[5].id, team_id: teams[0].id },
               { name: 'Player4', number: 4, achievements_id: achievements[6].id, team_id: teams[1].id },
               { name: 'Player4', number: 4, achievements_id: achievements[7].id, team_id: teams[1].id },
               { name: 'Player5', number: 5, achievements_id: achievements[8].id, team_id: teams[1].id },
               { name: 'Player5', number: 5, achievements_id: achievements[9].id, team_id: teams[1].id },
               { name: 'Player6', number: 6, achievements_id: achievements[10].id, team_id: teams[1].id },
               { name: 'Player6', number: 6, achievements_id: achievements[11].id, team_id: teams[1].id }
                        ])

teams = Team.create([
                      { name: 'RED' },
                      { name: 'BLUE' }
                    ])

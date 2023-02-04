matches = Match.create([
               { place: 'Moscow' },
               { place: 'London' },
               { place: 'New York' }
                       ])

teams = Team.create([
                      { name: 'RED', matches_id: matches[0].id },
                      { name: 'BLUE', matches_id: matches[0].id },
                      { name: 'RED', matches_id: matches[1].id },
                      { name: 'BLUE', matches_id: matches[1].id },
                      { name: 'RED', matches_id: matches[2].id },
                      { name: 'BLUE', matches_id: matches[2].id }
                    ])

Player.create([
               {name: 'Pele', number: 1, team_id: teams[0].id},
               {name: 'Messi', number: 2, team_id: teams[1].id},
               {name: 'Maradona', number: 3, team_id: teams[2].id},
               {name: 'Ronaldo', number: 4, team_id: teams[3].id},
               {name: 'Zidane', number: 5, team_id: teams[4].id},
               {name: 'Beckham', number: 6, team_id: teams[5].id}
             ])

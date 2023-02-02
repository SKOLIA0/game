# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).fulfill
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = Player.find_or_create_by(name: "Mikl Rudnik")
user2 = Player.find_or_create_by(name: "Jon Puts")
user3 = Player.find_or_create_by(name: "Dmitriy Golovanov")
user4 = Player.find_or_create_by(name: "Pol Smith")
user5 = Player.find_or_create_by(name: "Natan One")
user6 = Player.find_or_create_by(name: "Lion Wael")

match1 = Match.create(date: "2023-01-01")
match2 = Match.create(date: "2023-01-11")
match3 = Match.create(date: "2023-01-25")

team1 = Team.find_or_create_by(team_name: "Communist")
team2 = Team.find_or_create_by(team_name: "Capitalist")

TeamParticipation.find_or_create_by(match_id: match1.id, player_id: user1.id, team_id: team1.id)
TeamParticipation.find_or_create_by(match_id: match1.id, player_id: user2.id, team_id: team1.id)
TeamParticipation.find_or_create_by(match_id: match1.id, player_id: user3.id, team_id: team1.id)

TeamParticipation.find_or_create_by(match_id: match1.id, player_id: user4.id, team_id: team2.id)
TeamParticipation.find_or_create_by(match_id: match1.id, player_id: user5.id, team_id: team2.id)
TeamParticipation.find_or_create_by(match_id: match1.id, player_id: user6.id, team_id: team2.id)

MatchParticipation.find_or_create_by(match_id: match1.id, team_id: team1.id, player_id: user1.id, lucky_pass: true, running_10_km: true)
MatchParticipation.find_or_create_by(match_id: match1.id, team_id: team1.id, player_id: user2.id, lucky_pass: false, running_10_km: true)
MatchParticipation.find_or_create_by(match_id: match1.id, team_id: team1.id, player_id: user3.id, lucky_pass: true, running_10_km: false)

MatchParticipation.find_or_create_by(match_id: match1.id, team_id: team2.id, player_id: user4.id, lucky_pass: false, running_10_km: false)
MatchParticipation.find_or_create_by(match_id: match1.id, team_id: team2.id, player_id: user5.id, lucky_pass: true, running_10_km: false)
MatchParticipation.find_or_create_by(match_id: match1.id, team_id: team2.id, player_id: user6.id, lucky_pass: false, running_10_km: false)

TeamParticipation.find_or_create_by(match_id: match2.id, player_id: user4.id, team_id: team1.id)
TeamParticipation.find_or_create_by(match_id: match2.id, player_id: user2.id, team_id: team1.id)
TeamParticipation.find_or_create_by(match_id: match2.id, player_id: user3.id, team_id: team1.id)

TeamParticipation.find_or_create_by(match_id: match2.id, player_id: user1.id, team_id: team2.id)
TeamParticipation.find_or_create_by(match_id: match2.id, player_id: user5.id, team_id: team2.id)
TeamParticipation.find_or_create_by(match_id: match2.id, player_id: user6.id, team_id: team2.id)

MatchParticipation.find_or_create_by(match_id: match2.id, team_id: team1.id, player_id: user4.id, lucky_pass: false, running_10_km: true)
MatchParticipation.find_or_create_by(match_id: match2.id, team_id: team1.id, player_id: user2.id, lucky_pass: false, running_10_km: false)
MatchParticipation.find_or_create_by(match_id: match2.id, team_id: team1.id, player_id: user3.id, lucky_pass: true, running_10_km: false)

MatchParticipation.find_or_create_by(match_id: match2.id, team_id: team2.id, player_id: user1.id, lucky_pass: false, running_10_km: false)
MatchParticipation.find_or_create_by(match_id: match2.id, team_id: team2.id, player_id: user5.id, lucky_pass: false, running_10_km: false)
MatchParticipation.find_or_create_by(match_id: match2.id, team_id: team2.id, player_id: user6.id, lucky_pass: false, running_10_km: false)

TeamParticipation.find_or_create_by(match_id: match3.id, player_id: user1.id, team_id: team1.id)
TeamParticipation.find_or_create_by(match_id: match3.id, player_id: user2.id, team_id: team1.id)
TeamParticipation.find_or_create_by(match_id: match3.id, player_id: user3.id, team_id: team1.id)

TeamParticipation.find_or_create_by(match_id: match3.id, player_id: user4.id, team_id: team2.id)
TeamParticipation.find_or_create_by(match_id: match3.id, player_id: user5.id, team_id: team2.id)
TeamParticipation.find_or_create_by(match_id: match3.id, player_id: user6.id, team_id: team2.id)

MatchParticipation.find_or_create_by(match_id: match3.id, team_id: team1.id, player_id: user1.id, lucky_pass: false, running_10_km: true)
MatchParticipation.find_or_create_by(match_id: match3.id, team_id: team1.id, player_id: user2.id, lucky_pass: false, running_10_km: false)
MatchParticipation.find_or_create_by(match_id: match3.id, team_id: team1.id, player_id: user3.id, lucky_pass: false, running_10_km: false)

MatchParticipation.find_or_create_by(match_id: match3.id, team_id: team2.id, player_id: user4.id, lucky_pass: false, running_10_km: false)
MatchParticipation.find_or_create_by(match_id: match3.id, team_id: team2.id, player_id: user5.id, lucky_pass: false, running_10_km: false)
MatchParticipation.find_or_create_by(match_id: match3.id, team_id: team2.id, player_id: user6.id, lucky_pass: false, running_10_km: false)
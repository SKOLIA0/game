# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
team1 = Team.create(name: 'Team 1')
team2 = Team.create(name: 'Team 2')

players_team1 = 3.times.map { |i| Player.create(name: "Player#{i+1} Team1", team: team1) }
players_team2 = 3.times.map { |i| Player.create(name: "Player#{i+1} Team2", team: team2) }

metrics = ['Пробежал 10+ км', 'Сделал 70+ % точных передач'].map { |name| Metric.create(name: name) }

matches_team1 = 3.times.map { Match.create(team: team1, date: Date.today - rand(1..10).days) }
matches_team2 = 3.times.map { Match.create(team: team2, date: Date.today - rand(1..10).days) }

PlayerMetric.create(player: players_team1[0], match: matches_team1[0], metric: metrics[0])
PlayerMetric.create(player: players_team1[1], match: matches_team1[1], metric: metrics[1])
PlayerMetric.create(player: players_team1[2], match: matches_team1[2], metric: metrics[0])
PlayerMetric.create(player: players_team2[0], match: matches_team2[0], metric: metrics[1])
PlayerMetric.create(player: players_team2[1], match: matches_team2[1], metric: metrics[0])
PlayerMetric.create(player: players_team2[2], match: matches_team2[2], metric: metrics[1])
# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(name)
  temp_hash = game_hash
  # temp_hash.each do |home_away,info|
  #     info.each do |data_item,specfication|
  #
  #     end
  # end
  temp_player = ""
  temp_hash[:home][:players].each do |player|
    if player[:player_name] == name
      temp_player = player[:points]
    end
  end
  temp_hash[:away][:players].each do |player|
    if player[:player_name] == name
      temp_player = player[:points]
    end
  end
  temp_player
end

def shoe_size(name)
  temp_hash = game_hash
  # temp_hash.each do |home_away,info|
  #     info.each do |data_item,specfication|
  #
  #     end
  # end
  temp_shoe = ""
  temp_hash[:home][:players].each do |player|
    if player[:player_name] == name
      temp_shoe = player[:shoe]
    end
  end
  temp_hash[:away][:players].each do |player|
    if player[:player_name] == name
      temp_shoe = player[:shoe]
    end
  end
  temp_shoe
end

def team_colors(team)
  temp_hash = game_hash
  temp_colors = []
  if temp_hash[:home][:team_name] == team
    temp_colors = temp_hash[:home][:colors]
  elsif temp_hash[:away][:team_name] == team
    temp_colors = temp_hash[:away][:colors]
  end
    temp_colors
  # temp_hash[:home][:players].each do |player|
  #   if player[:player_name] == name
  #     temp_shoe = player[:shoe]
  #   end
  # end
  # temp_hash[:away][:players].each do |player|
  #   if player[:player_name] == name
  #     temp_shoe = player[:shoe]
  #   end
  # end
end

def team_names
  teams = []
  teams << game_hash[:home][:team_name]
  teams << game_hash[:away][:team_name]
  teams
end

def player_numbers(team)
  temp_numbers = []
  if game_hash[:home][:team_name] == team
    game_hash[:home][:players].each do |player|
      temp_numbers << player[:number]
    end
  elsif game_hash[:away][:team_name] == team
    game_hash[:away][:players].each do |player|
      temp_numbers << player[:number]
    end
  end
  temp_numbers
end

def player_stats(name)
  temp_hash = game_hash
  temp_stats = {}
  temp_hash[:home][:players].each do |player|
    if player[:player_name] == name
      temp_stats = player
    end
  end
  temp_hash[:away][:players].each do |player|
    if player[:player_name] == name
      temp_stats = player
    end
  end
  temp_stats
end

def big_shoe_rebounds
  temp_big_shoe = 0
  temp_player = {}
  game_hash[:home][:players].each do |player|
    if player[:shoe] > temp_big_shoe
      temp_big_shoe = player[:shoe]
      temp_player = player
    end
  end
  game_hash[:away][:players].each do |player|
    if player[:shoe] > temp_big_shoe
      temp_big_shoe = player[:shoe]
      temp_player = player
    end
  end
  temp_player[:rebounds]
end

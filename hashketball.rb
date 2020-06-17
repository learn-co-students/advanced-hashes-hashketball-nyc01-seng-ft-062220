require "pry"

# require './hashketball.rb'

# Write your code below game_hash
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

def num_points_scored(player_name)
  
  game_hash.each do |(location, inner_hash)|
    inner_hash[:players].each do |inner_key| #inner_key[:player_name] = "Alan Anderson"
      if inner_key[:player_name] == player_name
        return inner_key[:points]
      end
    end
  end
end

def shoe_size(player_name)
    game_hash.each do |(location, inner_hash)|
    
    inner_hash[:players].each do |inner_key| #inner_key[:player_name] = "Alan Anderson"
      if inner_key[:player_name] == player_name
        return inner_key[:shoe]
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |(location, inner_hash)|
    inner_hash.each do |(team_data, value)|
      if inner_hash[:team_name] == team_name
        return inner_hash[:colors]
      end
    end
  end
end

def team_names
  array = []
  
  game_hash.each do |(location, inner_hash)|
    inner_hash.each do |(team_data, name)|
    end
    if !array.include?(inner_hash[:team_name])
      array.push(inner_hash[:team_name])
    end
  end
  return array
end

def player_numbers(name_of_team)
  final_array = []

  game_hash.each do |(location, inner_hash)|
    #binding.pry
    if inner_hash[:team_name] == name_of_team
      inner_hash[:players].collect do |inner_key|
        final_array.push(inner_key[:number])
      end
    end
  end
  return final_array
end

def player_stats(player_name)
  
  game_hash.each do |(location, inner_hash)|
    inner_hash[:players].each do |inner_key|
      if inner_key[:player_name] == player_name
        return inner_key
      end
    end
  end
end

def big_shoe_rebounds
  big_shoe = nil
  shoe_array = []
  rebound = nil
  
  game_hash.each do |(location, inner_hash)|
    inner_hash[:players].each do |inner_key|
      shoe_array.push(inner_key[:shoe])
      big_shoe = shoe_array.sort[-1]
      inner_key.collect do |key, val|
        if key == :shoe && val == big_shoe
           rebound = inner_key[:rebounds]
        end
      end
    end
  end
  return rebound
end

